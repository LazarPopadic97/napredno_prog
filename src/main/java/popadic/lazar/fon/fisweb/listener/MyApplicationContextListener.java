/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.listener;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import popadic.lazar.fon.fisweb.config.MyAppConfig;
import popadic.lazar.fon.fisweb.model.Department;
import popadic.lazar.fon.fisweb.model.User;

/**
 * Web application lifecycle listener.
 *
 * @author Lazar Popadic
 */
@WebListener
public class MyApplicationContextListener implements ServletContextListener {

    public MyApplicationContextListener() {
        System.out.println("======================================================");
        System.out.println("========= MyApplicationContextListener=================");
        System.out.println("=======================================================");
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("======================================================");
        System.out.println("=========        contextInitialized  =================");
        System.out.println("=======================================================");
        //lista korisnika
        sce.getServletContext().setAttribute("users", createUsers());
        sce.getServletContext().setAttribute("departments", createDepartments());
        
        //ucitaj spring kontekst
        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(MyAppConfig.class);
        sce.getServletContext().setAttribute("applicationContext", applicationContext);
        //listu korisnika koji su trenutno prijavljeni na sistem
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
    
    private List<User> createUsers(){
        return new ArrayList<User>(){
            {
                add(new User("pera","peric", "pera", "pera"));
                add(new User("sofija","sofic", "sofija", "sofija"));
                add(new User("jovan","jovanic", "jovan", "jovan"));
            }
        };
    }
    private List<Department> createDepartments(){
        return new ArrayList<Department>(){
            {
                add(new Department(1l, "mmk", "Laboratorija za multimedijalne komunikacije"));
                add(new Department(2l, "silab", "Laboratorija za softversko inzenjerstvo"));
            }
        };
    }
}
