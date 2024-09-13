package com.techzen.techlearn.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;
import java.util.UUID;
@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "teacher")
public class Teacher extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(length = 7)
    private String color;

    @Column(columnDefinition = "TEXT")
    private String avatar;

    @OneToMany(mappedBy = "teacher")
    private List<TeacherCalendar> teacherCalendars;

    @OneToMany(mappedBy = "teacher")
    private List<TechnicalTeacher> technicalTeachers;
}