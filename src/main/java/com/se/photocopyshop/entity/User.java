package com.se.photocopyshop.entity;

import lombok.Builder;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Builder
@Table(name="users")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="pwd")
    private String pwd;

    @Column(name="email")
    private String email;

    @Column(name ="full_name")
    private String fullName;

    @Column(name="addr")
    private String address;

    @Column(name="phone")
    private String phone;

    @Column(name="role")
    private String role;

    public User() {
    }

    public User(int id, String pwd, String email, String fullName, String address, String phone, String role) {
        this.id = id;
        this.pwd = pwd;
        this.email = email;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.role = role;
    }
    public  User(int id){
        this.id = id;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
