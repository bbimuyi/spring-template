/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.template1.service;

/**
 *
 * @author trevorbrown
 */
public class LoginService {
    
    public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("trev") && password.equals("p");
	}
    
}
