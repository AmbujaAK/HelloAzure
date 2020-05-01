package net.azurewebsites.ambuja.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloAmbuja {

	@GetMapping("/")
	public String sayHello() {
		return "Hello ";
	}

    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
	public String sayHello(@PathVariable("name") String name) {
		return "Hello " + name;
	}
}
