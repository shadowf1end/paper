package com.sf.service;

import com.sf.domain.Tag;

import java.util.ArrayList;
import java.util.HashMap;

public interface TagService {

    HashMap<String, ArrayList<Tag>> findTags();
    Tag findTagByTagId(int tagId);
    Tag findTagByTagName(String tagName);
    HashMap<String, ArrayList<Tag>> findHotTags();

}
