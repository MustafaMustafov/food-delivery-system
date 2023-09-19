package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "CLIENT")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CLIENT_ID")
    private Long id;
    private String clientName;
    private String clientFamilyName;
    private String email;

    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "USER_ID")
    private User user;

    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "ADDRESS_ID")
    private Address address;
}
