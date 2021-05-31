package com.se.photocopyshop.rest;

import com.se.photocopyshop.dao.TestRepository;
import com.se.photocopyshop.entity.Test;
import com.se.photocopyshop.entity.User;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("test")
public class TestRestController {
    private TestRepository testRepository;

    public TestRestController(TestRepository testRepository) {
        this.testRepository = testRepository;
    }

    @GetMapping
    public String sayHello() {
        var user = Test.builder()
                .name("Nguyen van a")
                .build();
        testRepository.saveAndFlush(user);
        return "Hello World! Time on server is " + LocalDateTime.now();
    }

    @GetMapping("/{id}")
    public Test sayTest(@PathVariable int id) {
        return testRepository.findById(id).get();
    }

    @GetMapping("all")
    public List<Test> sayTestTest() {
        return testRepository.findAll();
    }

    @PostMapping("save")
    public Test sayTestTestTest(@RequestBody String name) {
        var test = Test.builder().name("test").build();
        return testRepository.save(test);
    }

    @PutMapping("save/{id}")
    public void sayTestTestTest(@PathVariable int id, @RequestParam String name) { ;
        var test = testRepository.getById(id);
        test.setName(name);
        testRepository.save(test);
    }

    @DeleteMapping("save/{id}")
    public void sayTestTestTest(@PathVariable int id) {
        var test = Test.builder().id(id).build();
        testRepository.delete(test);
    }
}
