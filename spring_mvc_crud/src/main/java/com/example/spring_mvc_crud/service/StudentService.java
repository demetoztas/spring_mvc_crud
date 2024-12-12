package com.example.spring_mvc_crud.service;



import com.example.spring_mvc_crud.model.Student;
import java.util.List;

public interface StudentService {
    List<Student> getAllStudents();

    Student getStudentById(Long id);

    void saveStudent(Student student);

    void deleteStudent(Long id);
}
