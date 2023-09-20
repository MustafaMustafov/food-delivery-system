package com.fooddelivery.fooddelivery.repositories;

import com.fooddelivery.fooddelivery.entities.Retailer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RetailerRepository extends JpaRepository<Retailer, Long> {
}
