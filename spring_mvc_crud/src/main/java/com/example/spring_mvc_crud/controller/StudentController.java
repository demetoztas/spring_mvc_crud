package com.example.spring_mvc_crud.controller;


import com.example.spring_mvc_crud.model.Student;
import com.example.spring_mvc_crud.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;

    // Listeleme işlemi
    @GetMapping
    public String getAllStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "list"; // list.html adında bir şablon olması gerekiyor
    }

    // Yeni öğrenci formunu gösterme
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("student", new Student());
        return "add"; // add.html adında bir şablon olması gerekiyor
    }

    // Yeni öğrenci ekleme işlemi
    @PostMapping("/add")
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student);
        return "redirect:/students"; // İşlem sonrası listeye yönlendirme
    }

    // Düzenleme formunu gösterme
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Student student = studentService.getStudentById(id);
        if (student != null) {
            model.addAttribute("student", student);
            return "edit"; // edit.html adında bir şablon olması gerekiyor
        }
        return "redirect:/students"; // Öğrenci bulunamazsa listeye yönlendirme
    }

    // Öğrenci bilgilerini güncelleme
    @PostMapping("/edit/{id}")
    public String updateStudent(@PathVariable Long id, @ModelAttribute("student") Student student) {
        Student existingStudent = studentService.getStudentById(id);
        if (existingStudent != null) {
            existingStudent.setName(student.getName());
            existingStudent.setAge(student.getAge());
            existingStudent.setEnrolledcourse(student.getEnrolledcourse());
            studentService.saveStudent(existingStudent);
        }
        return "redirect:/students";
    }



    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        if (studentService.getStudentById(id) != null) { // Null kontrolü
            studentService.deleteStudent(id); // Öğrenciyi sil
        }
        return "redirect:/students"; // Liste sayfasına yönlendirme
    }

}

