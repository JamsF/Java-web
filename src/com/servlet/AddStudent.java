package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entity.Student;
import com.utils.GetConnection;

/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String studentno = request.getParameter("studentno");
		String sname = request.getParameter("sname");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String classno = request.getParameter("classno");
		String point = request.getParameter("point");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addsql = "INSERT student VALUE('"+studentno+"','"+sname+"','"+sex+"','"+birthday+"','"+classno+"',"+point+",'"+phone+"','"+email+"')";
		Connection conn = GetConnection.getConn();
		boolean flag = false;
		Statement sta = null;
		try {
			sta = conn.createStatement();
			sta.executeUpdate(addsql);
			ResultSet rs = sta.executeQuery("select * from student");
			List<Student> list = new ArrayList<>();
			while(rs.next()) {
				if(studentno.equals(rs.getString(1))) {
					flag = true;
					Student stu = new Student();
					stu.setStudentno(rs.getString(1));
					stu.setSname(rs.getString(2));
					stu.setSex(rs.getString(3));
					stu.setBirthday(rs.getTimestamp(4));
					stu.setClassno(rs.getString(5));
					stu.setPoint(rs.getDouble(6));
					stu.setPhone(rs.getString(7));
					stu.setEmail(rs.getString(8));
					list.add(stu);
					break;
				}
			}
			if(!flag) {
				request.getRequestDispatcher("WEB-INF/view/add/addStudent_failed.jsp").forward(request, response);
			}
			else {
				request.setAttribute("list",list);
				request.getRequestDispatcher("WEB-INF/view/add/addStudent_success.jsp").forward(request, response);
			}
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
