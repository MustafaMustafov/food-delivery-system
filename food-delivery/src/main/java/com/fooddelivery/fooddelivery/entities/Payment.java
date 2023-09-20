package com.fooddelivery.fooddelivery.entities;

import com.fooddelivery.fooddelivery.enums.PaymentStatus;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id")
    private Long id;
    private String paymentType;
    @Enumerated(EnumType.STRING)
    private PaymentStatus paymentStatus;
}
