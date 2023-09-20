package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Retailer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "retailer_id")
    private Long id;

    private String retailerName;

    private String retailerEmail;

    private String telephoneNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "company_type_id")
    private CompanyType companyType;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;

    private String uniqueNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id")
    private Orders orders;
}
