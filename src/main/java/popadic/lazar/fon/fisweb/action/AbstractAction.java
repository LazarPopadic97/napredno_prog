/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.action;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Lazar Popadic
 */
public abstract class AbstractAction {
      public abstract String execute(HttpServletRequest request);
}
