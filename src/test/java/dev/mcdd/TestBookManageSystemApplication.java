package dev.mcdd;

import org.springframework.boot.SpringApplication;

public class TestBookManageSystemApplication {

    public static void main(String[] args) {
        SpringApplication.from(BookManageSystemApplication::main).with(TestcontainersConfiguration.class).run(args);
    }

}
