package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utils.GetConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		Connection conn = GetConnection.getConn();
		String login = "select * from admin";
		
		Statement sta = null;
		try {
			sta = conn.createStatement();
			ResultSet rs = sta.executeQuery(login);
			boolean flag = false;
			while(rs.next()) {
				String userN = rs.getString(1);
				String passW = rs.getString(2);
				if(userN.equals(user)&&passW.equals(pass)) {
					flag = true;
					break;
				}
			}
			if(!flag)
				request.getRequestDispatcher("failed.jsp").forward(request, response);
			else 
				request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
