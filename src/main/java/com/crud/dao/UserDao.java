package com.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.model.User;

public class UserDao {
	
	public int addUser(User user) {
		
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "1234");
			
			String query = "insert into users(name, email, country) values(?,?,?);";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getCountry());
			
			result = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	public List<User> getUsers(){
		
		List<User> all_users = new ArrayList<User>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","1234");
			String query = "select * from users;";
			PreparedStatement ps = con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int user_id = rs.getInt("id");
				String user_name = rs.getString("name");
				String user_email = rs.getString("email");
				String user_country = rs.getString("country");
				
				User user = new User(user_id, user_name, user_email, user_country);
				all_users.add(user);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return all_users;
	}
	
}
