package com.example.spring_mvc_crud.repository;



import com.example.spring_mvc_crud.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
public interface StudentRepository
        extends JpaRepository<Student, Long> {
}
