package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDao;
import com.dataconnecting.DBConnect;
import com.entity.Jobs;
import com.mysql.cj.Session;

@WebServlet("/addjob")
public class AddPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String title = req.getParameter("title");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");
			
			Jobs j = new Jobs();
			
			j.setTitle(title);
			j.setLocation(location);
			j.setDescription(desc);
			j.setStatus(status);
			j.setCategory(category);
			
			HttpSession session = req.getSession();			
			JobDao dao = new JobDao(DBConnect.getConn());
			boolean f = dao.addjobs(j);
			if(f) {
				session.setAttribute("succMsg", "Job post Sucessfully..");
				resp.sendRedirect("addjob.jsp");
			}
			else {
				session.setAttribute("succMsg", "Job post Sucessfully..");
				resp.sendRedirect("addjob.jsp");
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
