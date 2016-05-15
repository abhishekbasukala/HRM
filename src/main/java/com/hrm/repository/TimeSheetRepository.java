package com.hrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hrm.domain.EmployeeTimeSheet;

@Repository
public interface TimeSheetRepository extends JpaRepository<EmployeeTimeSheet, Integer> {

}
