package com.ms.controller;

import com.jfinal.core.Controller;
import com.ms.bean.User;

public class UserLoginController extends Controller {
	public void login(){
		
		render("/login.jsp");
	}
	
	public void doLogin(){

		String username = getPara("username");
		String password = getPara("password");
		User user = User.me.findFirst(
				"select * from users where username=? and password=?",
				username, password);
		if (user!= null) {
			setSessionAttr("user", user);
			render("/index.jsp");
		} else {
			render("/error.jsp");
		}
	}

}
