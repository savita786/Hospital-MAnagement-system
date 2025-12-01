package Hospital_Management.Controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.time.LocalDate;
import Hospital_Management.Dao.HospitalDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class InsertPatient implements Servlet{
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/html");
		HospitalDao dao = new HospitalDao();

		//String id=req.getParameter("userid");
		int id=Integer.parseInt(req.getParameter("userid"));//we need to convert for math operations not perform on this
		String name=req.getParameter("username");
		String email=req.getParameter("useremail");
		String password=req.getParameter("userpassword");
		LocalDate dob=LocalDate.parse(req.getParameter("dob"));
		String gender=req.getParameter("gender");
		PrintWriter printWriter=res.getWriter();
		Hospital user= new Hospital(id,name,email,dob,password,gender);
		Hospital user2=dao.saveUserDao(user);
		System.out.println("something missing");
		if(user2!=null) {
			req.setAttribute("msg", "data registered");
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("Login.jsp");
			dispatcher.include(req, res);
		}else {
			req.setAttribute("msg", "data not registered");
			//printWriter.write("<html><body><h5 style='color:red;'>Not Registered</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("Register.jsp");
			dispatcher.include(req,res);
		}
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
