package demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/add")
public class AddServlets extends HttpServlet{

	 @Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		 String n1 = req.getParameter("n1");
		 String n2 = req.getParameter("n2");
		
		 
		 int num1 = Integer.parseInt(n1);
		 int num2 = Integer.parseInt(n2);
		  
		 int sum=num1+num2;
		  
		 req.setAttribute("res", sum);
		  
		 RequestDispatcher rd = req.getRequestDispatcher("result.jsp");	 
		 rd.forward(req, res);
		  
		  
//		 PrintWriter pw = res.getWriter();
//		 
//		 pw.write("<html><body> <h1> n1 : "+n1+"</h1> <h1> n2 : "+n2+" </h1> <span> sum : "+sum+"</span> </body></html>");
	}
}
