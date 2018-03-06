package com.sf.service;

import com.sf.dao.BookDao;
import com.sf.dao.CollectionDao;
import com.sf.dao.TagDao;
import com.sf.domain.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PageInfoServiceImpl implements PageInfoService {

    private BookDao bookDao;
    private TagDao tagDao;
    private CollectionDao collectionDao;

    @Autowired
    public void setCollectionDao(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Autowired
    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public PageInfo getBookPageInfoByTagId(int tagId, int page) {
        int bookNum = bookDao.getBookNumByTagName(tagDao.findTagByTagId(tagId).getTagName());
        return setPageInfo(bookNum, page);
    }

    public PageInfo getBookPageInfoByFactor(String factor, int page) {
        int bookNum = bookDao.getBookNum(factor);
        return setPageInfo(bookNum, page);
    }

    public PageInfo getCollectionPageInfo(int bookId, int page) {
        int collectionNum = collectionDao.getCollectionNum(bookId);
        return setPageInfo(collectionNum, page);
    }

    private PageInfo setPageInfo(int num, int page) {
        int pageCount = (int) Math.ceil(num / 20.0);
        PageInfo pageInfo = new PageInfo();
        pageInfo.setDataCount(num);
        pageInfo.setPageCount(pageCount);
        pageInfo.setCurrentIndex(page);
        if(pageCount < 5) {
            pageInfo.setBeginIndex(1);
            pageInfo.setEndIndex(pageCount);
            return pageInfo;
        }
        if(page < 3) {
            pageInfo.setBeginIndex(1);
            pageInfo.setEndIndex(5);
            return pageInfo;
        }else if(page > pageCount - 2) {
            pageInfo.setBeginIndex(pageCount - 4);
            pageInfo.setEndIndex(pageCount);
            return pageInfo;
        }
        pageInfo.setBeginIndex(page - 2);
        pageInfo.setEndIndex(page + 2);
        return pageInfo;
    }

}
