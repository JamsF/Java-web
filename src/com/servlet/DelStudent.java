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
 * Servlet implementation class DelStudent
 */
@WebServlet("/DelStudent")
public class DelStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Statement sta = null;
		boolean flag = false;
		String stuno = request.getParameter("studentno");
		String stuname = request.getParameter("sname");
		String sql = "select * from student";
		String del = "delete from student where studentno ='" + stuno + "'";
		Connection conn = GetConnection.getConn();
		try {
			sta = conn.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			List<Student> list = new ArrayList<>();
			while(rs.next()) {
				String studentno = rs.getString(1);
				String sname = rs.getString(2);
				if(stuno.equals(studentno) && stuname.equals(sname)) {
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
			int rs1 = sta.executeUpdate(del);
			if(rs1 != 0 && flag) {
				request.setAttribute("list",list);
				request.getRequestDispatcher("WEB-INF/view/del/delStudent_success.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("WEB-INF/view/del/delStudent_failed.jsp").forward(request, response);
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
