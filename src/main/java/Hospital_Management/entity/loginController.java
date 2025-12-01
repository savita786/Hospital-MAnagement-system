package Hospital_Management.entity;

import java.io.IOException;

import Hospital_Management.Controller.Hospital;
import Hospital_Management.Dao.HospitalDao;
import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;


public class loginController extends GenericServlet{
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		HospitalDao dao = new HospitalDao();
		String email =req.getParameter("useremail") ;
		String password =req.getParameter("userpassword");
		Hospital user=dao.getUserByEmailDao(email);
		if(user!=null)
		{
			if(user.getPassword().equals(password))
			{
//				req.setAttribute("msg", "passwod is wrong");
				req.getRequestDispatcher("home.jsp").forward(req, res);
				
			}
			else
			{
				req.setAttribute("msg", "passwod is wrong");
				
				req.getRequestDispatcher("login.jsp").forward(req, res);
			}
			}
		
		else
		{
			 	req.setAttribute("msg", "Email not found. Please register first.");
	            req.getRequestDispatcher("Registration.jsp").forward(req, res);
	            return;
		}
	}

}
