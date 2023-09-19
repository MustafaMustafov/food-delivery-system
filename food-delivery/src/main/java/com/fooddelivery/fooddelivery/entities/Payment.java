package com.fooddelivery.fooddelivery.entities;

import com.fooddelivery.fooddelivery.Enums.PaymentStatus;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PAYMENT_ID")
    private Long id;
    private String paymentType;
    private PaymentStatus paymentStatus;
}
