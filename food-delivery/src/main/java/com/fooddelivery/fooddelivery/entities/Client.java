package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "CLIENT")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "client_id")
    private Long id;
    @Column(name = "client_name")
    private String clientName;
    @Column(name = "client_family_name")
    private String clientFamilyName;
    private String email;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;
}
