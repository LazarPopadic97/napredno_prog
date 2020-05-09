/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.action.impl;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;
import popadic.lazar.fon.fisweb.action.AbstractAction;
import popadic.lazar.fon.fisweb.constants.PageConstants;
import popadic.lazar.fon.fisweb.model.Department;

/**
 *
 * @author Lazar Popadic
 */
@Component
public class EditDepartmentAction extends AbstractAction {

    public EditDepartmentAction() {
    }

    @Override
    public String execute(HttpServletRequest request) {
          Department d = getDepartment(request);

        request.setAttribute("id", d.getId());
        request.setAttribute("name", d.getName());
        request.setAttribute("shortname", d.getShortname());
        return PageConstants.VIEW_EDIT_DEPARTMENT;
    }

    private Department getDepartment(HttpServletRequest request) throws NumberFormatException {
        long id = Long.valueOf(request.getPathInfo().split("/")[3]);
        Department department = new Department();
        department.setId(id);
        List<Department> departments = ((List<Department>) request.getServletContext().getAttribute("departments"));
        return departments.get(departments.indexOf(department));
    }

    
    
}
