package demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet("/print")
public class PrintServlet extends HttpServlet{
   @Override
   public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	 String id = req.getParameter("id");
	 String name = req.getParameter("name");
	 String email = req.getParameter("email");
	 String phone = req.getParameter("phone");
	 String password = req.getParameter("password");
	 
	 req.setAttribute("id", id);
	 req.setAttribute("name", name);
	 req.setAttribute("email", email);
	 req.setAttribute("phone", phone);
	 req.setAttribute("password", password);
	 
	 RequestDispatcher rd = req.getRequestDispatcher("print.jsp");
	 
	 rd.forward(req, res);
    }
}
