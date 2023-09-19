package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Retailer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RETAILER_ID")
    private Long id;

    private String retailerName;

    private String retailerEmail;

    private String telephoneNumber;

    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "USER_ID")
    private User user;

    @OneToOne
    @JoinColumn(name = "COMPANY_TYPE_ID")
    private CompanyType companyType;
    @OneToOne
    @PrimaryKeyJoinColumn
    @JoinColumn(name = "ADDRESS_ID")
    private Address address;
    private String uniqueNumber;
}
