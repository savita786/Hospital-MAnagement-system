package Hospital_Management.entity;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import Hospital_Management.Controller.Hospital;
import Hospital_Management.Dao.HospitalDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class Insert implements Servlet {
	@Override
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

		int id=Integer.parseInt(req.getParameter("userid"));//we need to convert for math operations not perform on this
		String name=req.getParameter("username");
		String email=req.getParameter("useremail");
		LocalDate dob=LocalDate.parse(req.getParameter("userdob"));
		String password=req.getParameter("userpassword");
		String gender=req.getParameter("gender");
		PrintWriter printWriter=res.getWriter();
		Hospital user= new Hospital(id,name,email,dob,password,gender);
		Hospital user2=dao.saveUserDao(user);
		if(user2!=null) {
			req.setAttribute("msg", "data registered");
			//printWriter.write("<html><body><h5 style='color:green;'>Data registered!!!</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, res);
		}else {
			req.setAttribute("msg", "data not registered");
			//printWriter.write("<html><body><h5 style='color:red;'>Not Registered</h5></body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.include(req,res);
		}
		
	}
	//bse 64 java 8 feature endcodin and decongi

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
