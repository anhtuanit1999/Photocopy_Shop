package com.se.photocopyshop.entity;


import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "CartDetail")
public class CartDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name = "number")
    private double number;

    @Column(name = "date")
    private String date;

    @OneToMany(mappedBy = "cartDetail", fetch = FetchType.EAGER)
    java.util.List<PhotoMachine> photoMachine;

    @ManyToOne
    @JoinColumn(name = "cartId")
    Cart cart;

    public CartDetail() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getNumber() {
        return number;
    }

    public void setNumber(double number) {
        this.number = number;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public List<PhotoMachine> getPhotoMachine() {
        return photoMachine;
    }

    public void setPhotoMachine(List<PhotoMachine> photoMachine) {
        this.photoMachine = photoMachine;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    @Override
    public java.lang.String toString() {
        return "CartDetail{" +
                "id=" + id +
                ", number=" + number +
                ", date=" + date +
                ", photoMachine=" + photoMachine +
                ", cart=" + cart +
                '}';
    }
}
