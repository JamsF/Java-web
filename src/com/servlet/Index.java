package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fin = "finStudent";
		String add = "addStudent";
		String del = "delStudent";
		String mod = "modStudent";
		String out = "outStudent";
		String tojsp = request.getParameter("tojsp");
		if(tojsp.equals(fin))
			request.getRequestDispatcher("WEB-INF/view/fin/finStudent.jsp").forward(request, response);
		else if(tojsp.equals(add))
			request.getRequestDispatcher("WEB-INF/view/add/addStudent.jsp").forward(request, response);
		else if(tojsp.equals(del))
			request.getRequestDispatcher("WEB-INF/view/del/delStudent.jsp").forward(request, response);
		else if(tojsp.equals(mod))
			request.getRequestDispatcher("WEB-INF/view/mod/modStudent.jsp").forward(request, response);
		else if(tojsp.equals(out))
			request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
