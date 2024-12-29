package dev.mcdd;

import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.autoconfigure.openai.OpenAiAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.redis.RedisAutoConfiguration;
import org.springframework.boot.autoconfigure.data.redis.RedisReactiveAutoConfiguration;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

@Slf4j
@SpringBootApplication(exclude = {
        RedisAutoConfiguration.class,
        RedisReactiveAutoConfiguration.class,
        OpenAiAutoConfiguration.class
})
public class BookManageSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookManageSystemApplication.class, args);
    }

    @EventListener
    public void handleApplicationReadyEvent(ApplicationReadyEvent event) {
        log.info("BookManageSystemApplication.handleApplicationReadyEvent with context: {}", event.getApplicationContext());
    }


}
