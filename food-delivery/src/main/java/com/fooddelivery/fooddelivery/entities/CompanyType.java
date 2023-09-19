package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class CompanyType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "COMPANY_TYPE_ID")
    private Long id;
    private String companyType;
}
