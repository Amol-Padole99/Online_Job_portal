package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.dataconnecting.DBConnect;
import com.entity.User;

@WebServlet("/updateprofile")
public class UpdateUserServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name= req.getParameter("name");
			String qua = req.getParameter("qua");
			String email = req.getParameter("email");
			String ps = req.getParameter("ps");
			
			UserDao dao = new UserDao(DBConnect.getConn());
			User u = new User ();
			u.setId(id);
			u.setName(name);
			u.setQualification(qua);
			u.setPassword(ps);
			u.setEmail(email);
			
			boolean f = dao.UpdateUser(u);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg", "Profile Udate Succesfully");
				resp.sendRedirect("home.jsp");
				
				
			}else {
				session.setAttribute("succMsg", " Something Wrong on Server");
				resp.sendRedirect("home.jsp");
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
	}
	

}
