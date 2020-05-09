/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package popadic.lazar.fon.fisweb.config;

import org.springframework.context.annotation.ComponentScan;

/**
 *
 * @author Lazar Popadic
 */
@ComponentScan(basePackages = {
    "popadic.lazar.fon.fisweb.controller",
    "popadic.lazar.fon.fisweb.view_resolver",
    "popadic.lazar.fon.fisweb.action"
})
public class MyAppConfig {

}
