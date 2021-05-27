package com.se.photocopyshop.entity;

import org.apache.xpath.operations.String;

import javax.persistence.*;

@Entity
@Table(name="User")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;

    @Column(name ="frist_name")
    private String fistName;

    @Column(name="last_name")
    private String lastName;

    @Column(name="Address")
    private String address;

    @Column(name="phone")
    private String phone;

    @Column(name="email")
    private String email;

    public User() {
    }

    public User(int id, String fistName, String lastName, String address, String phone, String email) {
        this.id = id;
        this.fistName = fistName;
        this.lastName = lastName;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFistName() {
        return fistName;
    }

    public void setFistName(String fistName) {
        this.fistName = fistName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public java.lang.String toString() {
        return "User{" +
                "id=" + id +
                ", fistName=" + fistName +
                ", lastName=" + lastName +
                ", address=" + address +
                ", phone=" + phone +
                ", email=" + email +
                '}';
    }
}
