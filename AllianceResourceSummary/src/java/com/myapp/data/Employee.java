/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.data;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Carl
 */
public class Employee {
    private String FirstName;
    private String MiddleName;
    private String LastName;
    private String BusinessUnit;
    private Date DateHired;
    private int YearsITIndustry;
    private String CollegeSchool1;
    private String CollegeSchool2;
    private String CollegeCourse1;
    private String CollegeCourse2;
    private int CollegeYear;
    private String JobTitles;
    private int NRIBatch;
    private Effort effort = new Effort();
    

    public static ArrayList<Employee> getEmployeeList() throws SQLException, Exception{
        ArrayList <Employee>e_list = new ArrayList<Employee>();                //List of Employees
        String sql = "SELECT employee.FirstName, effort.* "
                + "FROM employee "
                + "LEFT JOIN employee_gen ON employee.EmpIDNum = employee_gen.emp_id "
                + "LEFT JOIN effort ON employee_gen.effortgen_id = effort.effort_id";
        ResultSet rs = Database.doQuery(sql);
        while(rs.next()){
            Employee e = new Employee();
            e.setFirstName(rs.getString("FirstName"));
            e.setEffort(rs);
            e_list.add(e);
        }
        return e_list;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getMiddleName() {
        return MiddleName;
    }

    public void setMiddleName(String MiddleName) {
        this.MiddleName = MiddleName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getBusinessUnit() {
        return BusinessUnit;
    }

    public void setBusinessUnit(String BusinessUnit) {
        this.BusinessUnit = BusinessUnit;
    }

    public Date getDateHired() {
        return DateHired;
    }

    public void setDateHired(Date DateHired) {
        this.DateHired = DateHired;
    }

    public int getYearsITIndustry() {
        return YearsITIndustry;
    }

    public void setYearsITIndustry(int YearsITIndustry) {
        this.YearsITIndustry = YearsITIndustry;
    }

    public String getCollegeSchool1() {
        return CollegeSchool1;
    }

    public void setCollegeSchool1(String CollegeSchool1) {
        this.CollegeSchool1 = CollegeSchool1;
    }

    public String getCollegeSchool2() {
        return CollegeSchool2;
    }

    public void setCollegeSchool2(String CollegeSchool2) {
        this.CollegeSchool2 = CollegeSchool2;
    }

    public String getCollegeCourse1() {
        return CollegeCourse1;
    }

    public void setCollegeCourse1(String CollegeCourse1) {
        this.CollegeCourse1 = CollegeCourse1;
    }

    public String getCollegeCourse2() {
        return CollegeCourse2;
    }

    public void setCollegeCourse2(String CollegeCourse2) {
        this.CollegeCourse2 = CollegeCourse2;
    }

    public int getCollegeYear() {
        return CollegeYear;
    }

    public void setCollegeYear(int CollegeYear) {
        this.CollegeYear = CollegeYear;
    }

    public String getJobTitles() {
        return JobTitles;
    }

    public void setJobTitles(String JobTitles) {
        this.JobTitles = JobTitles;
    }

    public int getNRIBatch() {
        return NRIBatch;
    }

    public void setNRIBatch(int NRIBatch) {
        this.NRIBatch = NRIBatch;
    }
    
    public Effort getEffort() {
        return effort;
    }
    
    private void setEffort(ResultSet rs) throws SQLException {
        rs.previous();
        effort.setEffort(rs);
    }
    public static Employee getEmployeeInfo(int empID) throws SQLException, Exception{
        ArrayList e_info = new ArrayList();
        String sql = "SELECT FirstName, MiddleName, LastName, "
                + "BusinessUnit, DateHired, YearsITIndustry, CollegeSchool1, CollegeSchool2,"
                + "CollegeCourse1, CollegeCourse2, CollegeYear, JobTitles, NRIBatch "
                + "FROM employee "
                + "WHERE EmpIDNum ="+empID;
       ResultSet rs = Database.doQuery(sql);
       boolean notEmpty = rs.next();
       Employee e = new Employee();
       e.setFirstName(rs.getString("FirstName"));
       e.setMiddleName(rs.getString("MiddleName"));
       e.setLastName(rs.getString("LastName"));
       e.setBusinessUnit(rs.getString("BusinessUnit"));
       e.setDateHired(rs.getDate("DateHired"));
       e.setYearsITIndustry(rs.getInt("YearsITIndustry"));
       e.setCollegeSchool1(rs.getString("CollegeSchool1"));
       e.setCollegeSchool1(rs.getString("CollegeSchool2"));
       e.setCollegeCourse1(rs.getString("CollegeCourse1"));
       e.setCollegeCourse2(rs.getString("CollegeCourse2"));
       e.setCollegeYear(rs.getInt("CollegeYear"));
       e.setJobTitles(rs.getString("JobTitles"));
       e.setNRIBatch(rs.getInt("NRIBatch"));
       return e;
    }


}
        
        
        
    

