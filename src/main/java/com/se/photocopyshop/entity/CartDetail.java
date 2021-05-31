package com.se.photocopyshop.entity;


import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "cart_detail")
public class CartDetail {

    @EmbeddedId
    private CarDetailKey id;

    @ManyToOne
    @MapsId("cartId")
    @JoinColumn(name = "cart_id")
    private Cart cartId;

    @ManyToOne
    @MapsId("photocopyMachineId")
    @JoinColumn(name = "photocopy_machine_id")
    private PhotoMachine photocopyMachineId;

    @Column(name = "quantity")
    private int quantity;

    public CartDetail() {
    }

    public CartDetail(CarDetailKey id, Cart cartId, PhotoMachine photocopyMachineId, int quantity) {
        this.id = id;
        this.cartId = cartId;
        this.photocopyMachineId = photocopyMachineId;
        this.quantity = quantity;
    }

    public CarDetailKey getId() {
        return id;
    }

    public void setId(CarDetailKey id) {
        this.id = id;
    }

    public Cart getCartId() {
        return cartId;
    }

    public void setCartId(Cart cartId) {
        this.cartId = cartId;
    }

    public PhotoMachine getPhotocopyMachineId() {
        return photocopyMachineId;
    }

    public void setPhotocopyMachineId(PhotoMachine photocopyMachineId) {
        this.photocopyMachineId = photocopyMachineId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "CartDetail{" +
                "id=" + id +
                ", cartId=" + cartId +
                ", photocopyMachineId=" + photocopyMachineId +
                ", quantity=" + quantity +
                '}';
    }
}
