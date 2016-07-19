package models.dao;


import models.entity.Card;
import play.db.jpa.JPAApi;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import java.util.List;
import java.util.stream.Collectors;

public class CardController {

    JPAApi api;

    @Inject
    public CardController(JPAApi api) {
        this.api = api;
    }

    public String queryByName(String query) {
        EntityManager entityManager = api.em();
        List<Card> resultList = entityManager
                .createQuery("SELECT c FROM Card c WHERE c.name LIKE :custName")
                .setParameter("custName", query)
                .getResultList();
        List<String> nameList = resultList.stream().map(Card::getName).collect(Collectors.toList());
        return nameList.toString();
    }
}
