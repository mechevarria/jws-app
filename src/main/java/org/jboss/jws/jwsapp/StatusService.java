package org.jboss.jws.jwsapp;

import java.time.LocalDateTime;
import java.util.HashMap;

class StatusService {

    static HashMap<String, String> isUp(String name) {

        HashMap<String, String> model = new HashMap<>();

        model.put("status", "Welcome " + name);
        model.put("org", "FCC");
        model.put("time", LocalDateTime.now().toString());

        return model;

    }
}