package controllers;

import play.db.Database;
import play.mvc.Controller;
import play.mvc.Result;
import views.html.index;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DatabaseTestController extends Controller {

    private Database database;

    @Inject
    public DatabaseTestController(Database database) {
        this.database = database;
    }

    public Result hello() {
        return ok("Hello, world!");
    }
}
