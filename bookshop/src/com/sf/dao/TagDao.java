package com.sf.dao;

import com.sf.domain.Tag;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface TagDao {

    Tag findTagByTagId(int tagId);
    ArrayList<Tag> findTagsByTagType(String tagType);
    Tag findTagByTagName(String tagName);
    ArrayList<Tag> findHotTagsByTagType(String tagType);

}
