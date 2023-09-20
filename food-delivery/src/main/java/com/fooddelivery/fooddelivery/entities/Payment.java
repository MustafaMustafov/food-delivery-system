package com.fooddelivery.fooddelivery.entities;

import com.fooddelivery.fooddelivery.enums.PaymentStatus;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "payment_id")
    private Long id;
    private String paymentType;
    private PaymentStatus paymentStatus;
}
