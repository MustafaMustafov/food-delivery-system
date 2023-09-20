package com.fooddelivery.fooddelivery.repositories;

import jakarta.persistence.Id;
import org.hibernate.type.descriptor.converter.spi.JpaAttributeConverter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RetailerRepository extends JpaRepository<Long, Id> {
}
