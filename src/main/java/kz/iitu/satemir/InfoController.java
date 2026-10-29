package kz.iitu.satemir.satemirdaniyarstudentapi;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InfoController {
    @GetMapping("/info")
    public String getInfo() {
        return "Student: Daniyar Satemir, Group: IT2-2307, ID: 37889";
    }
}