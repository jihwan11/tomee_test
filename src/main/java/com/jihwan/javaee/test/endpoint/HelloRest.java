package com.jihwan.javaee.test.endpoint;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/hello")
public class HelloRest {
	@GET
	public String sayHello(@DefaultValue("freind") @QueryParam("name") String name){
		return "Hello " + name + "!!";
	}
}
