package com.ms.controller;

import com.jfinal.core.Controller;
import com.ms.bean.User;

public class UserRegistController extends Controller {
	public void regist() {
		render("/regist.jsp");

	}

	public void doRegist() {

		String username = getPara("username");
		User user = User.me.findFirst("select * from users where username=?",
				username);
		String password = getPara("password");
		String password1 = getPara("password1");

		if (user != null) {

			render("/error.jsp");
		}else if(!password.equals(password1)){
			
			render("/error.jsp");
			
			}else {

			User.me.set("username", getPara("username"))
					.set("password", getPara("password"))
					.set("password1", getPara("password1"))
					.set("user_email", getPara("user_email")).save();
			render("/success.jsp");
		}

	}
}