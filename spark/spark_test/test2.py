# -*- coding: utf-8 -*-

from pyspark import SparkConf
from pyspark.sql import SparkSession
from pyspark.mllib.recommendation import ALS

conf = SparkConf().setMaster('spark://smart:7077').setAppName('book_recommend').set("spark.executor.memory", "512m")

ss = SparkSession.builder.config(conf=conf).getOrCreate()
sc = ss.sparkContext

dataframe_mysql = ss.read.format("jdbc").options(url="jdbc:mysql://127.0.0.1:3306/bookshop", driver="com.mysql.jdbc.Driver", dbtable="t_collection", user="root", password="1234").load()

dataframe = dataframe_mysql.where("rating != 0").select("user_id","book_id","rating")

(training, envaluation) = dataframe.randomSplit([0.8, 0.2])

rank = 10
iterations = 5

model = ALS.train(dataframe, rank, iterations, lambda_=0.01, nonnegative=True)

envaluation_data = envaluation.rdd.map(lambda p: (p[0], p[1]))
recommends = model.predictAll(envaluation_data).map(lambda r: ((r[0], r[1]), r[2]))
raps = envaluation.rdd.map(lambda r: ((r[0], r[1]), r[2])).join(recommends)
MSE = raps.map(lambda r: (r[1][0] - r[1][1])**2).mean()
print("Mean Squared Error = " + str(MSE))
sc.stop()