package com.paramsix.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.paramsix.model.Employee;

public class EmployeeDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Employee p) {
		String sql = "insert into Emp99(name,salary,designation) values('" + p.getName() + "'," + p.getSalary() + ",'"
				+ p.getDesignation() + "')";
		return template.update(sql);
	}

	public int update(Employee p) {
		String sql = "update Emp99 set name='" + p.getName() + "', salary=" + p.getSalary() + ",designation='"
				+ p.getDesignation() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from Emp99 where id=" + id + "";
		return template.update(sql);
	}

	public Employee getEmployeeById(int id) {
		String sql = "select * from Emp99 where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Employee>(Employee.class));
	}

	public List<Employee> getEmployees() {
		return template.query("select * from Emp99", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setSalary(rs.getDouble(3));
				e.setDesignation(rs.getString(4));
				e.setHra(rs.getFloat(3) * (float) 0.4);
				return e;
			}
		});

	}

	public List<Employee> calculateSalary(List<Employee> list) {

		List<Employee> res = new ArrayList<>();
		for (int i = 0; i < list.size(); i++) {
			Employee emp = new Employee();

			double net;
			double tax;
			double salary = list.get(i).getSalary();
			double hra = (float) 0.4 * list.get(i).getSalary();
			double da = (float) 0.3 * list.get(i).getSalary();
			double grosssalary = (salary + hra + da) * 12;
			if (grosssalary > 1500000) {
				tax = (0.3 * grosssalary);

				net = (grosssalary - tax);

			} else if (grosssalary > 1000000) {
				tax = (0.2 * grosssalary);

				net = (grosssalary - tax);

			} else if (grosssalary > 500000) {
				tax = (0.1 * grosssalary);

				net = (grosssalary - tax);

			} else {
				net = grosssalary;
				tax = 0;
			}
			emp.setGrosssalary(grosssalary);
			emp.setTax(tax);
			emp.setNet(net);
			emp.setName(list.get(i).getName());
			emp.setSalary(list.get(i).getSalary());
			emp.setDesignation(list.get(i).getDesignation());
			emp.setHra(hra);
			emp.setDa(da);
			emp.setId(list.get(i).getId());
			res.add(emp);

		}

		return res;

	}
}
