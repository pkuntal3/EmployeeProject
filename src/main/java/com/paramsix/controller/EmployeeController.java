package com.paramsix.controller;     
import java.util.ArrayList;
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.paramsix.model.Employee;    
import com.paramsix.dao.EmployeeDao;
import com.paramsix.dao.EmployeeList;    
@Controller    
public class EmployeeController {    
    @Autowired    
    EmployeeDao dao;        //will inject dao from XML file    
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
    @RequestMapping("/addemployee")    
    public String showform(Model m){    
        m.addAttribute("command", new Employee());  
        return "addemployee";   
    }  
    
    
    /*It saves object into database. The @ModelAttribute puts request data  
     *  into model object. You need to mention RequestMethod.POST method   
     *  because default request is GET*/    
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("employee") Employee emp){    
        dao.save(emp);    
        return "redirect:/viewemployee";//will redirect to viewemp request mapping    
    }    
    
    
    /* It provides list of employees in model object */    
    @RequestMapping("/viewemployee")    
    public String viewemp(Model m){    
        List<Employee> list= dao.calculateSalary(dao.getEmployees()); 
        
        m.addAttribute("list",list);  
        return "viewemployee";    
    }    
    
    
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editemployee/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Employee emp=dao.getEmployeeById(id);    
        m.addAttribute("command",emp);  
        return "editemployee";    
    }    
    
    
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("employee") Employee emp){    
        dao.update(emp);    
        return "redirect:/viewemployee";    
    }    
    
    
    /* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deleteemployee/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);    
        return "redirect:/viewemployee";    
    }     
    
    @RequestMapping("/signin")    
    public String signin(){   
         
        return "signin";   
    }  
    
    @RequestMapping("/forget")    
    public String forget(){   
         
        return "forget";   
    } 
    
    @RequestMapping(value= "/home", method = RequestMethod.POST)     
    public @ResponseBody String validate(@RequestParam("employeeData") String employeeData){  
    	
    	String[] employee = employeeData.split(";");
    	
    	
    	List<EmployeeList> employeeList = new ArrayList();
    	EmployeeList employee1 = new EmployeeList();
    	employee1.employeeName = "krishna";
    	employee1.password = "kri123";
    	employeeList.add(employee1);
    	
    	EmployeeList employee2 = new EmployeeList();
    	employee2.employeeName = "prashant";
    	employee2.password = "pra123";
    	employeeList.add(employee2);
    	
    	EmployeeList employee3 = new EmployeeList();
    	employee3.employeeName = "shashwat";
    	employee3.password = "sha123";
    	employeeList.add(employee3);
    	
    	EmployeeList employee4 = new EmployeeList();
    	employee4.employeeName = "jigyasa";
    	employee4.password = "jig123";
    	employeeList.add(employee4);
    	
    	EmployeeList employee5 = new EmployeeList();
    	employee5.employeeName = "akshay";
    	employee5.password = "aks123";
    	employeeList.add(employee5);
    	
    	EmployeeList employee6 = new EmployeeList();
    	employee6.employeeName = "sourabh";
    	employee6.password = "sou123";
    	employeeList.add(employee6);
    	
    	EmployeeList employee7 = new EmployeeList();
    	employee7.employeeName = "upasna";
    	employee7.password = "upa123";
    	employeeList.add(employee7);
    	
    	for(int i = 0 ; i< employeeList.size();i++) {
    		
    		if(employeeList.get(i).employeeName.equals(employee[0]) && employeeList.get(i).password.equals(employee[1])) {
    			return "true";
    		}
    	}    	
    	
    	return "false";
    }  
    
    @RequestMapping(value= "/home", method = RequestMethod.GET)      
    public String home(){   
         
        return "home";   
    }  
}