package com.se.photocopyshop.dao;

import com.se.photocopyshop.entity.Test;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TestRepository extends JpaRepository<Test, Integer> {
    @Modifying
    @Query(
            nativeQuery = true,
            value = "insert into test values(:#{#name})"
    )
    void hihi(@Param("name") String name);
}
