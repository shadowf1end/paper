# -*- coding: utf-8 -*-

from pyspark import SparkConf, SparkContext
from pyspark.mllib.recommendation import ALS, Rating

# 获取所有movie名称和id对应集合  
def movie_dict(file):  
    dict = {}  
    with open(file) as f:  
        for line in f:  
            arr = line.split('|')
            movie_id = int(arr[0])  
            movie_name = str(arr[1])  
            dict[movie_id] = movie_name  
    return dict  
  
# 转换用户评分数据格式  
def get_rating(str):  
    arr = str.split('\t')  
    user_id = int(arr[0])  
    movie_id = int(arr[1])  
    user_rating = float(arr[2])  
    return Rating(user_id, movie_id, user_rating)  
  
  
conf = SparkConf().setMaster('local').setAppName('MovieRec').set("spark.executor.memory", "512m")  
sc = SparkContext(conf=conf)

#加载数据
movies = movie_dict('ml-100k/u.item')
sc.broadcast(movies)
data = sc.textFile('ml-100k/u.data')

# 转换 (user, product, rating) tuple
ratings = data.map(get_rating)

# 建立模型
rank = 10
iterations = 5
model = ALS.train(ratings, rank, iterations)

# 对指定用户ID推荐
userid = 10

#按得分高低推荐前10电影
rec_movies=model.recommendProducts(userid,10)
print '\n################################\n'
print 'recommend movies for userid %d:' % userid
for item in rec_movies:
    print 'name:'+movies[item[1]]+'==> score: %.2f' % item[2]
print '\n################################\n'
sc.stop()
