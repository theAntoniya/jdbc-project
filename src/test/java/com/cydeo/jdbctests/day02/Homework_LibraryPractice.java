package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

import static com.cydeo.jdbctests.utility.DB_Util.getAllColumnNamesAsList;

public class Homework_LibraryPractice {

//    -- Display book name and related bookCategory name from library DB
//
String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;
    @Test
    public void task1 () {

        // create a connection
        DB_Util.createConnection(url,username,password);

        // Run Query
        DB_Util.runQuery("select name from book_categories");


        // get data from DB

        List<String> expectedBookCategoryName= getAllColumnNamesAsList();
        getAllColumnNamesAsList();

        /*
        Assume that we get this info from UI with automation
         */

        // get data from UI
        String actualBookCategoryName="[name]";
//
//        //compare
        Assertions.assertEquals(expectedBookCategoryName,actualBookCategoryName);

        // close it
        DB_Util.destroy();


    }


//-- Find me first 5 highest book categories based on book count
//
//-- Find me how many book we have in each category_id
//
//-- Find me how many book we have in each category_name
@Test
public void task4 () {

    // create a connection
    DB_Util.createConnection(url,username,password);

    // Run Query
    DB_Util.runQuery("select count(*)name from books");


    // get data from DB

   String expectedBookCategoryName = DB_Util.getFirstRowFirstColumn();


        /*
        Assume that we get this info from UI with automation
         */

    // get data from UI
    String actualBookCategoryName="3965";
////
////        //compare
    Assertions.assertEquals(expectedBookCategoryName,actualBookCategoryName);
//
//    // close it
    DB_Util.destroy();
//

}

}
