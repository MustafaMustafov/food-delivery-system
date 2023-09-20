package com.fooddelivery.fooddelivery.repositories;

import com.fooddelivery.fooddelivery.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
