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
public class DeleteDepartmentAction extends AbstractAction {

    public DeleteDepartmentAction() {
    }

    @Override
    public String execute(HttpServletRequest request) {
        long id = Long.valueOf(request.getPathInfo().split("/")[3]);
        Department department = new Department();
        department.setId(id);
        boolean isDeleted = ((List<Department>) request.getServletContext().getAttribute("departments")).remove(department);
        if (!isDeleted) {
            request.setAttribute("messageDeleteX", "Department with id " + id + " can't be deleted.");
            return PageConstants.VIEW_DEFAULT_ERROR;
        }
        request.setAttribute("messageDeleted", "Department with id: " + id + " is successfuly deleted!");
        return PageConstants.VIEW_ALL_DEPARTMENTS;

    }

}
