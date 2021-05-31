package com.se.photocopyshop.entity;


import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="product_category")
public class ProductCategory {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="name")
    String name;

    public ProductCategory() {
    }

    public ProductCategory(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public java.lang.String toString() {
        return "ProductCategory{" +
                "id=" + id +
                ", name=" + name +
                '}';
    }
}
