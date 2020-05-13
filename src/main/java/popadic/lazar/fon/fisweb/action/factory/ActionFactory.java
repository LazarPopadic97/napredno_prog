/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.action.factory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import popadic.lazar.fon.fisweb.constants.ActionConstants;
import popadic.lazar.fon.fisweb.action.AbstractAction;

/**
 *
 * @author Lazar Popadic
 */
@Component
public class ActionFactory {

    @Autowired
    private AbstractAction loginAction;
    @Autowired
    private AbstractAction allDepartmentsAction;
    @Autowired
    private AbstractAction addDepartmentAction;
    @Autowired
    private AbstractAction saveDepartmentAction;
    @Autowired
    private AbstractAction logoutAction;
    @Autowired
    private AbstractAction editDepartmentAction;
    @Autowired
    private AbstractAction deleteDepartmentAction;
    @Autowired
    private AbstractAction updateDepartmentAction;
    @Autowired
    private AbstractAction homeAction;
    @Autowired
    private AbstractAction myProfileAction;

    public AbstractAction createActionFactory(String actionName) {
        AbstractAction action = null;
        if (actionName.equals(ActionConstants.URL_LOGIN)) {
            action = loginAction;
        }
        if (actionName.equals(ActionConstants.URL_LOGOUT)) {
            action = logoutAction;
        }
        if (actionName.equals(ActionConstants.URL_ALL_DEPARTMENTS)) {
            action = allDepartmentsAction;
        }
        if (actionName.equals(ActionConstants.URL_ADD_DEPARTMENT)) {
            action = addDepartmentAction;
        }
        if (actionName.equals(ActionConstants.URL_SAVE_DEPARTMENT)) {
            action = saveDepartmentAction;
        }
        if (actionName.startsWith(ActionConstants.URL_EDIT_DEPARTMENT)) {
            action = editDepartmentAction;
        }
        if (actionName.startsWith(ActionConstants.URL_DELETE_DEPARTMENT)) {
            action = deleteDepartmentAction;
        }
        if (actionName.startsWith(ActionConstants.URL_UPDATE_DEPARTMENT)) {
            action = updateDepartmentAction;
        }
        if (actionName.startsWith(ActionConstants.URL_HOME)) {
            action = homeAction;
        }
        if (actionName.startsWith(ActionConstants.URL_PROFILE)) {
            action = myProfileAction;
        }
        return action;
    }
}
