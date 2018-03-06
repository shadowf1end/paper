# -*- coding: utf-8 -*-

from pyspark import SparkConf
from pyspark.sql import SparkSession,Row
from pyspark.mllib.recommendation import ALS

conf = SparkConf().setMaster('spark://smart:7077').setAppName('book_recommend').set("spark.executor.memory", "512m")

ss = SparkSession.builder.config(conf=conf).getOrCreate()
sc = ss.sparkContext

dataframe_mysql = ss.read.format("jdbc").options(url="jdbc:mysql://127.0.0.1:3306/bookshop", driver="com.mysql.jdbc.Driver", dbtable="t_collection", user="root", password="1234").load()

dataframe = dataframe_mysql.where("rating != 0").select("user_id","book_id","rating")

rank = 10
iterations = 5
model = ALS.train(dataframe, rank, iterations, nonnegative=True)

book_num = dataframe.groupBy("book_id").count().count()
rec_books = model.recommendProductsForUsers(book_num).collect()

r = []
for user in rec_books:
    for rec in user[1]:
        r.append(Row(user_id = rec[0],book_id = rec[1],rating = rec[2]))

ratings = ss.createDataFrame(r)
ratings.write.format("jdbc").options(url="jdbc:mysql://127.0.0.1:3306/bookshop", driver="com.mysql.jdbc.Driver", dbtable="t_recommend", user="root", password="1234").save()
sc.stop()