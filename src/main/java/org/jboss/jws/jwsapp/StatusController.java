package org.jboss.jws.jwsapp;

import java.util.HashMap;
import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("status")
@Produces(MediaType.APPLICATION_JSON)
public class StatusController {

	Logger log = Logger.getLogger(getClass().toString());

	@GET
	public HashMap<String, String> isUp(@QueryParam("name") String name) {

		log.info("****** Calling StatusService ******");
		return StatusService.isUp(name);

	}
}
