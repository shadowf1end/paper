package com.sf.web.collection;

import com.sf.domain.Collection;
import com.sf.domain.Message;
import com.sf.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SaveCollectionController {

    private CollectionService collectionService;

    @Autowired
    public void setCollectionService(CollectionService collectionService) {
        this.collectionService = collectionService;
    }

    @RequestMapping("/collection.json")
    @ResponseBody
    public Message saveCollection(@RequestParam int rating, @RequestParam int userId, @RequestParam int bookId,
                                  @RequestParam int collectionType, @RequestParam String comment) {
        Collection collection = new Collection();
        collection.setRating(rating);
        collection.setUserId(userId);
        collection.setBookId(bookId);
        collection.setComment(comment);
        collection.setCollectionType(collectionType);
        collectionService.saveCollection(collection);
        return new Message(1, "收藏成功");
    }
}
