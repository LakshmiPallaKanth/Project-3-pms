package demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req,ServletResponse res) throws ServletException, IOException{
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String email =req.getParameter("email");
		String phone=req.getParameter("phone");
		String password =req.getParameter("password");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(password);
		System.out.println("hello");
		
//		res.getWriter().write("<h1>your Data Successfully Submitted</h1>");
		
		PrintWriter pw = res.getWriter();
		pw.write("<html><body><h1> ID : "+id+"</h1> <h1> Name : "+name+"</h1>  <h1> Email : "+email+"</h1> <h1> Phone : "+phone+"</h1><h1> Password : "+password+"</h1> </body></html>");
	}
}
