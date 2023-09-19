package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String street;
    private String number;
    private String city;
    private String postalCode;
    private String country;
    private String telephone;
    private String mobile;

    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "CLIENT_ID")
    private Client client;
}
