# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class bookItem(scrapy.Item):
    authors = scrapy.Field()
    pubdate = scrapy.Field()
    tags = scrapy.Field()
    origin_title = scrapy.Field()
    image = scrapy.Field()
    translators = scrapy.Field()
    catalog = scrapy.Field()
    pages = scrapy.Field()
    publisher = scrapy.Field()
    title = scrapy.Field()
    author_intro = scrapy.Field()
    summary = scrapy.Field()
    price = scrapy.Field()
