package com.jsnl.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class hello {
    @RequestMapping(value = "/hello")
    public String hello(){
        System.out.println("hello");
        return "dadad";
    }
}
