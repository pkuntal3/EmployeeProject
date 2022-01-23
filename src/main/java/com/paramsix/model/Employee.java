package com.paramsix.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Employee {
	private int id;

@NotNull(message = "Employee name must not be empty")
private String name;

private double salary;

@NotNull(message = "Employee name must not be empty")
@Size(min = 3, max = 15, message = "Between 3 and 15 characters")
private String designation;

private double hra;
private double da;
private double grosssalary;
private double tax;
private double net;

public Employee() {
	super();
	}

	public Employee(int id, String name, double salary, String designation, double hra, double da, double grosssalary, double tax, double net) {
	super();
	this.id = id;
	this.name = name;
	this.salary = salary;
	this.designation = designation;
	this.hra = hra;
	this.da = da;
	this.grosssalary = grosssalary;
	this.tax = tax;
	this.net = net;

}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public double getSalary() {
	return salary;
}

public void setSalary(double salary) {
	this.salary = salary;
}

public String getDesignation() {
	return designation;
}

public void setDesignation(String designation) {
	this.designation = designation;
}

public double getHra() {
	return hra;
}

public void setHra(double hra) {
	this.hra = hra;
}

public double getDa() {
	return da;
}

public void setDa(double da) {
	this.da = da;
}

public double getGrosssalary() {
	return grosssalary;
}

public void setGrosssalary(double grosssalary) {
	this.grosssalary = grosssalary;
}

public double getTax() {
	return tax;
}

public void setTax(double tax) {
	this.tax = tax;
}

public double getNet() {
	return net;
}

public void setNet(double net) {
	this.net = net;
}
@Override
public String toString() {
	return String.format("Emp [id=%-3s, name=%-15s, salary=%s, designation=%-15s, hra=%s, da=%s, grosssalary=%s, tax=%s, net=%s]", id, name, salary, designation, hra, da, grosssalary, tax, net);
}
}


