/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.action.impl;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;
import popadic.lazar.fon.fisweb.action.AbstractAction;
import popadic.lazar.fon.fisweb.constants.PageConstants;

/**
 *
 * @author Lazar Popadic
 */
@Component
public class HomeAction extends AbstractAction{

    @Override
    public String execute(HttpServletRequest arg0) {
        return PageConstants.VIEW_HOME;
    }
    
}
