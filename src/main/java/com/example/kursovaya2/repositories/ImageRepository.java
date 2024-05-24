package com.example.kursovaya2.repositories;

import com.example.kursovaya2.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
