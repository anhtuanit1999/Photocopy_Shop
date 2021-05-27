package com.se.photocopyshop.entity;


import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="User")

public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name = "nameSP")
    private String nameSP;

    @Column(name = "discount")
    private double discount;

    @OneToMany(mappedBy = "cart", fetch = FetchType.EAGER)
    java.util.List<CartDetail> cartDetail;

    @OneToMany(mappedBy = "cart", fetch = FetchType.EAGER)
    List<PhotoMachine> photoMachines;
    public Cart() {
    }

    public List<PhotoMachine> getPhotoMachines() {
        return photoMachines;
    }

    public void setPhotoMachines(List<PhotoMachine> photoMachines) {
        this.photoMachines = photoMachines;
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

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public List<CartDetail> getCartDetail() {
        return cartDetail;
    }

    public void setCartDetail(List<CartDetail> cartDetail) {
        this.cartDetail = cartDetail;
    }

    @Override
    public java.lang.String toString() {
        return "Cart{" +
                "id=" + id +
                ", nameSP=" + nameSP +
                ", discount=" + discount +
                ", cartDetail=" + cartDetail +
                ", photoMachines=" + photoMachines +
                '}';
    }
}
