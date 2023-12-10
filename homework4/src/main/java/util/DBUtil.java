package util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import Javabean.User;

public class DBUtil {
	private static DBUtil instance = new DBUtil();   //
	// 定义users集合，用于模拟数据库
	private HashMap<String,User> users = new HashMap<String,User>();
	//维护的是每个用户上一次登录的ip地址
	private HashMap<String,String> ips = new HashMap<String,String>();
	
	//维护当前在线的人数
	private int curr_log=0;
	
	//维护IP数组，List,
	private List<String> array_ipList=new ArrayList<String>();
	
	//插入新的IP地址
    public void insert_ip(String username,String ip) {
      ips.put(username, ip);
    }
	
	//返回前一个的数据
    public String get_ip(String username) {
    	if(ips.containsKey(username)) {
    		return ips.get(username);
    	}else {
    		return null;
    	}
    }
	
	//返回实时在线的人数
	public int getCurr_log() {
		return curr_log;
	}
	
    //登出的效果，实时在线的人数减去1	
	public void userSub() {
	curr_log--;		
	System.out.println("你是够");
	}

	//登入的效果，实时在线的人数加上1
	public void userAdd(){
	curr_log++;
	}

	
	
	
		private DBUtil() {
			// 向数据库(users)中存入两条数据
//			User user1 = new User();
//			user1.setUsername("Jack");
//			user1.setPassword("12345678");
//			users.put("Jack ",user1);
//			
//			User user2 = new User();
//			user2.setUsername("Rose");
//			user2.setPassword("abcdefg");
//			users.put("Rose ",user2);			
		}
		
		public static DBUtil getInstance()	{
			return instance;
		}
		
		
		// 获取数据库(users)中的数据
				public User getUser(String userName) {
					if(users.containsKey(userName)) {
					User user = (User) users.get(userName);
					return user;
					}
					return null;	
				}	
		
		//统计累计注册的人数
				public int reg_num() {
				return users.size();	
				}
						
		
		// 向数据库(users)插入数据
		public boolean insertUser(User user) {
			if(user == null) {
				return false;
			}
			String userName = user.getUsername();
			if(users.get(userName) != null) {
				return false;
			}
			users.put(userName,user);
			return true;
		}
	}


