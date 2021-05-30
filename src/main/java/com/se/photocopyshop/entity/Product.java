package com.se.photocopyshop.entity;


import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name="name")
    String name;

    @Column(name="country")
    String country;


    @ManyToOne
    @JoinColumn(name = "photoMachineId")
    PhotoMachine photoMachine;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    java.util.List<Cart> carts;


    public Product() {
    }

    public Product(int id, String name, String country, PhotoMachine photoMachine, List<Cart> carts) {
        this.id = id;
        this.name = name;
        this.country = country;
        this.photoMachine = photoMachine;
        this.carts = carts;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public PhotoMachine getPhotoMachine() {
        return photoMachine;
    }

    public void setPhotoMachine(PhotoMachine photoMachine) {
        this.photoMachine = photoMachine;
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

    @Override
    public java.lang.String toString() {
        return "Product{" +
                "id=" + id +
                ", name=" + name +
                ", country=" + country +
                ", photoMachine=" + photoMachine +
                ", carts=" + carts +
                '}';
    }
}
