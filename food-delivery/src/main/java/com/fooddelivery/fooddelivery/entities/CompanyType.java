package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class CompanyType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "company_type_id")
    private Long id;
    private String companyType;
}
