package pms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet(urlPatterns = "/updatepage")
public class UpdatePageServlets extends HttpServlet{
   @Override
   public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	 
	   String id = req.getParameter("id");
	   
	   try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms?user=root&password=root");
		PreparedStatement ps = con.prepareStatement("SELECT * FROM product where id = ?");
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			
			req.setAttribute("id", rs.getString(1));
			req.setAttribute("name", rs.getString(2));
			req.setAttribute("price", rs.getString(3));
			req.setAttribute("brand", rs.getString(4));
			req.setAttribute("description", rs.getString(5));
			
			
			RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
			rd.forward(req, res);
		}
		rs.close();
		ps.close();
		con.close();
		
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
	   
	   
	   
   }
}
