package org.jboss.jws.jwsapp;

import org.junit.Test;

import java.util.HashMap;

import static junit.framework.TestCase.assertEquals;

public class AppTest {


    @Test
    public void testRestStatus() {
        HashMap<String, String> response = StatusService.isUp();

        assertEquals("The rest api is now up!", response.get("status"));
    }
}
