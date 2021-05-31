package com.se.photocopyshop.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@AllArgsConstructor
@NoArgsConstructor
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

}
