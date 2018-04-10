package org.jboss.jws.jwsapp;

import java.util.HashMap;

class StatusService {

    static HashMap<String,String> isUp() {

        HashMap<String,String> model = new HashMap<>();
        model.put("status", "The rest api is now up!");

        return model;

    }
}