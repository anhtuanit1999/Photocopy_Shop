package com.se.photocopyshop.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class CarDetailKey implements Serializable {
    @Column(name = "cart_id")
    private int cartId;

    @Column(name = "photocopy_machine_id")
    private int photocopyMachineId;

    public CarDetailKey() {
    }

    public CarDetailKey(int cartId, int photocopyMachineId) {
        this.cartId = cartId;
        this.photocopyMachineId = photocopyMachineId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    @Override
    public String toString() {
        return "CarDetailKey{" +
                "cartId=" + cartId +
                ", photocopyMachineId=" + photocopyMachineId +
                '}';
    }

    public int getPhotocopyMachineId() {
        return photocopyMachineId;
    }

    public void setPhotocopyMachineId(int photocopyMachineId) {
        this.photocopyMachineId = photocopyMachineId;
    }
}
