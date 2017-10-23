/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.template1.login;

import org.springframework.stereotype.Service;

/**
 *
 * @author trevorbrown
 */
@Service
public class LoginService_bk {

    public boolean validateUser(String user, String password) {
        return user.equalsIgnoreCase("trev") && password.equals("p");
    }

}
