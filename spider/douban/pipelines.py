# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

from scrapy.exceptions import DropItem
import pymysql
class DoubanPipeline(object):

    def open_spider(self, spider):
        self.conn = pymysql.connect(host='192.168.154.128',user='root',password='1234',db='book',charset='utf8')
        self.cursor = self.conn.cursor()

    def process_item(self, item, spider):
        self.insert(item)
        return item

    def close_spider(self, spider):
        self.conn.commit()
        self.cursor.close()
        self.conn.close()

    def insert(self, item):
        self.cursor.execute('''INSERT INTO t_book(authors,tags,translators,origin_title,image,
                            pubdate,catalog,pages,publisher,title,author_intro,summary,price)
                            VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)''',
                            (item["authors"],item["tags"],item["translators"],
                            item["origin_title"],item["image"],item["pubdate"],
                            item["catalog"],item["pages"],item["publisher"],
                            item["title"],item["author_intro"],item["summary"],item["price"]))