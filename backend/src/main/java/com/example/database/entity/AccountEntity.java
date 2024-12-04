package com.example.database.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="ACCOUNT")
public class AccountEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="account_number")
    private Integer account_number;

    // Quan hệ ManyToOne với CustomerEntity

    @ManyToOne
    @JsonBackReference
    @JoinColumn(name = "CID", nullable = false, referencedColumnName = "CID")
    private CustomerEntity customerEntity;

    // Quan hệ ManyToOne với AccTypeEntity

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "account_type_id")
    private AccTypeEntity accTypeEntity;
}
