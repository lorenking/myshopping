package com.ms.commons;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.ms.bean.User;
import com.ms.controller.UserLoginController;
import com.ms.controller.UserRegistController;
import com.ms.controller.indexController;


public class InitConfig extends JFinalConfig {
	

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("db.properties");
		me.setViewType(ViewType.JSP);
		me.setDevMode(getPropertyToBoolean("devMode",false));
		
	}

	@Override
	public void configRoute(Routes me) {
		me.add("/user_login", UserLoginController.class);
		me.add("/user_regist", UserRegistController.class);
		//me.add("/file", FileUpload.class);
		me.add("/", indexController.class);
	}

	@Override
	public void configPlugin(Plugins me) {
		
		DruidPlugin dp = new DruidPlugin(getProperty("jdbcUrl"), getProperty("username"), getProperty("password"), getProperty("driverClass"));
		me.add(dp);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
		me.add(arp);
		arp.addMapping("users", User.class);
		
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub
		
	}

}
