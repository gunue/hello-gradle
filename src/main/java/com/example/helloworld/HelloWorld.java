package com.example.helloworld;

import com.google.common.base.Joiner;

public class HelloWorld {
    public static void main(String[] args) {
        String message = Joiner.on(" ").join("Hello", "World!");
        System.out.println(message);
    }
}

