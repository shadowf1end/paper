package com.sf.service;

import com.sf.dao.TagDao;
import com.sf.domain.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class TagServiceImpl implements TagService {

    private TagDao tagDao;

    @Autowired
    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public HashMap<String, ArrayList<Tag>> findTags() {
        HashMap<String, ArrayList<Tag>> tags = new HashMap<String, ArrayList<Tag>>();
        tags.put("文学", tagDao.findTagsByTagType("文学"));
        tags.put("流行", tagDao.findTagsByTagType("流行"));
        tags.put("文化", tagDao.findTagsByTagType("文化"));
        tags.put("生活", tagDao.findTagsByTagType("生活"));
        tags.put("经管", tagDao.findTagsByTagType("经管"));
        tags.put("科技", tagDao.findTagsByTagType("科技"));
        return tags;
    }

    public Tag findTagByTagId(int tagId) {
        return tagDao.findTagByTagId(tagId);
    }

    public Tag findTagByTagName(String tagName) {
        return tagDao.findTagByTagName(tagName);
    }

    public HashMap<String, ArrayList<Tag>> findHotTags() {
        HashMap<String, ArrayList<Tag>> tags = new HashMap<String, ArrayList<Tag>>();
        tags.put("文学", tagDao.findHotTagsByTagType("文学"));
        tags.put("流行", tagDao.findHotTagsByTagType("流行"));
        tags.put("文化", tagDao.findHotTagsByTagType("文化"));
        tags.put("生活", tagDao.findHotTagsByTagType("生活"));
        tags.put("经管", tagDao.findHotTagsByTagType("经管"));
        tags.put("科技", tagDao.findHotTagsByTagType("科技"));
        return tags;
    }

}
