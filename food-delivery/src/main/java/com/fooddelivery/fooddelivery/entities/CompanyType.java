package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class CompanyType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "company_type_id")
    private Long id;
    private String companyType;
}
