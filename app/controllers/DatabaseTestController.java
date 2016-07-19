package controllers;

import models.dao.CardController;
import play.db.Database;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DatabaseTestController extends Controller {

    private Database database;
    @Inject
    CardController cardController;

    @Inject
    public DatabaseTestController(Database database) {
        this.database = database;
    }

    @Transactional
    public Result hello() {
        String name = cardController.queryByName("name01");
        return ok("Hello, world!" + name + "get all: " + cardController.getAll());
    }
}
