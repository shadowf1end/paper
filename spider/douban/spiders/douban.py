import scrapy
import re
import json
from scrapy import Selector
from douban.items import bookItem
from douban.channel import channel

class NgaSpider(scrapy.Spider):
    name = "NgaSpider"
    host = "https://book.douban.com/"

    start_urls = []
    for urls in channel.split():
        for i in range(0, 981, 20):
            start_urls.append(urls+"?start={}&type=T".format(str(i)))

    def parse(self, response):
        selector = Selector(response)
        # 在此，xpath会将所有class=topic的标签提取出来，当然这是个list
        # 这个list里的每一个元素都是我们要找的html标签
        content_list = selector.xpath("//a[@class='nbg']")
        # 遍历这个list，处理每一个标签
        for content in content_list:
            url = content.xpath('@href').extract_first()
            url = "https://api.douban.com/v2/book/" + \
                  re.findall(r"https://book.douban.com/subject/(.+?)/",url)[0] +\
                  "?fields=author,pubdate,tags,origin_title,image,translator,catalog,pages,publisher,title,author_intro,summary,price"
            yield scrapy.Request(url, callback = self.parse1)

    def parse1(self,response):
        sites = json.loads(response.body_as_unicode())

        authors = ""
        for author in sites["author"]:
            authors += "|" + author

        tags = ""
        for tag in sites["tags"]:
            tags += "|" + tag["name"]

        translators = ""
        for translator in sites["translator"]:
            translators += "|" + translator

        book = bookItem()

        book["authors"] = authors
        book["tags"] = tags
        book["translators"] = translators
        book["origin_title"] = sites["origin_title"]
        book["image"] = sites["image"]
        book["pubdate"] = sites["pubdate"]
        book["catalog"] = sites["catalog"]
        book["pages"] = sites["pages"]
        book["publisher"] = sites["publisher"]
        book["title"] = sites["title"]
        book["author_intro"] = sites["author_intro"]
        book["summary"] = sites["summary"]
        book["price"] = sites["price"]

        yield book
