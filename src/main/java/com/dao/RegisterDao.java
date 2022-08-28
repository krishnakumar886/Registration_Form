package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.bean.RegisterBean;
import com.dbconnection.DBConnection;

public class RegisterDao {
	public String registerUser(RegisterBean registerBean) {
		String fullName = registerBean.getFullName();
		String email = registerBean.getEmail();
		String userName = registerBean.getUserName();
		String password = registerBean.getPassword();
		String occupation = registerBean.getOccupation();
		String mobileno = registerBean.getMobileno();
		String address = registerBean.getAddress();

		Connection con = null;
		PreparedStatement preparedStatement = null;
		try {
			con = DBConnection.createConnection();

			preparedStatement = con.prepareStatement(
					"insert into users(fullName,Email,userName,password,occupation,mobileNo,address) values (?,?,?,?,?,?,?)");
			preparedStatement.setString(1, fullName);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(3, password);
			preparedStatement.setString(4, occupation);
			preparedStatement.setString(5, mobileno);
			preparedStatement.setString(6, address);

			int i = preparedStatement.executeUpdate();

			if (i != 0)
				return "SUCCESS";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Something went wrong";
	}
}