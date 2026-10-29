package kz.iitu.satemir.satemirdaniyarstudentapi;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
}