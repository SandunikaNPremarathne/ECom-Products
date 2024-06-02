package com.sandunika.product;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class ScheduledTaskService {

    @Scheduled(fixedRate = 10000)
    public void scheduledTask() {
        System.out.println("Scheduled task executed at " + LocalDateTime.now());
    }
}

