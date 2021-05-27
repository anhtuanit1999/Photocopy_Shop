package com.se.photocopyshop.entity;

import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="PhotoMachine")
public class PhotoMachine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name = "nameSP")
    private String nameSP;

    @Column(name = "price")
    private double price;

    private String image;

    @OneToMany(mappedBy = "photoMachine", fetch = FetchType.EAGER)
    java.util.List<Cart> carts;


    public PhotoMachine() {
    }

    public PhotoMachine(int id, String nameSP, double price, String image, List<Cart> carts) {
        this.id = id;
        this.nameSP = nameSP;
        this.price = price;
        this.image = image;
        this.carts = carts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameSP() {
        return nameSP;
    }

    public void setNameSP(String nameSP) {
        this.nameSP = nameSP;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

    @Override
    public java.lang.String toString() {
        return "PhotoMachine{" +
                "id=" + id +
                ", nameSP=" + nameSP +
                ", price=" + price +
                ", image=" + image +
                ", carts=" + carts +
                '}';
    }
}
