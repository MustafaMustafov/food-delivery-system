package com.fooddelivery.fooddelivery.entities;

import com.fooddelivery.fooddelivery.Enums.OrderStatus;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Entity
@Data
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ORDER_ID")
    private Long id;
    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "CLIENT_ID")
    private Client client;
    @OneToOne
    @JoinColumn(name = "RETAILER_ID")
    private Retailer retailer;
    @OneToMany
    @JoinColumn(name = "PRODUCT_ID")
    private Set<Product> products;
    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "ADDRESS_ID")
    private Address address;
    private double totalPrice;
    @OneToOne
    @JoinColumn(name = "PAYMENT_ID")
    private Payment payment;
    private OrderStatus status;
}
