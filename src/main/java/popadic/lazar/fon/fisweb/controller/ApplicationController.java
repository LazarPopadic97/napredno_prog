/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import popadic.lazar.fon.fisweb.action.AbstractAction;
import popadic.lazar.fon.fisweb.action.factory.ActionFactory;
import popadic.lazar.fon.fisweb.constants.PageConstants;

/**
 *
 * @author Lazar Popadic
 */
@Component
public class ApplicationController {
   @Autowired
    private ActionFactory actionFactory;
    
    public String processRequest(String pathInfo, HttpServletRequest request) {
        String nextPage = PageConstants.VIEW_DEFAULT_ERROR;
        
        AbstractAction action = actionFactory.createActionFactory(pathInfo);
        if (action != null) {
            nextPage = action.execute(request);
        }
        
        return nextPage;
    }
}
