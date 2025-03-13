package demo;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet("/mul")
public class MultiplicationServlets extends HttpServlet{
   @Override
   public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	String n1 = req.getParameter("n1");
	String n2 = req.getParameter("n2");
	
	int num1 = Integer.parseInt(n1);
	int num2 = Integer.parseInt(n2);
	
	int mul = num1*num2;
	
	req.setAttribute("res", mul);
	
	RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
	
	rd.forward(req, res);
   }
}
