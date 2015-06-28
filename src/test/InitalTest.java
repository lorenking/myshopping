package test;

import org.junit.After;
import org.junit.BeforeClass;
import org.junit.Test;



import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.ms.bean.User;

public class InitalTest {
	private static final String URL = "jdbc:mysql://localhost:3308/myshopping";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "lorenking123";
	private static final String DRIVER = "org.mariadb.jdbc.Driver";
    protected static ActiveRecordPlugin arp;
    protected static DruidPlugin dp;
    User user=new User();
	@BeforeClass
	public static void setUpBeforeClass() throws Exception{
		
		dp=new DruidPlugin(URL,USERNAME,PASSWORD,DRIVER);
		dp.start();
		
		arp =new ActiveRecordPlugin(dp);
		arp.setDevMode(true).setShowSql(true);
		
		arp.addMapping("users", User.class);
		arp.start();
	}
	
	@After
	public void tearDown() throws Exception{
		arp.stop();
		dp.stop();
		
	}
	@Test
	public void add(){
		
		user.set("username", "wangwo").set("password", "123456").set("password1", "123456").set("user_email", "12345@qq.com").save();
		
	}
	
	@Test
	public void del(){
		
		user.deleteById(3);
	}
	
}
