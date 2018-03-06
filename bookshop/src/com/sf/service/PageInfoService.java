package com.sf.service;

import com.sf.domain.PageInfo;

public interface PageInfoService {

    PageInfo getBookPageInfoByTagId(int tagId, int page);
    PageInfo getBookPageInfoByFactor(String factor, int page);
    PageInfo getCollectionPageInfo(int bookId, int page);

}
