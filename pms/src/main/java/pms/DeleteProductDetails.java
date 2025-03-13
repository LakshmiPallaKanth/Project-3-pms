package pms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet(urlPatterns = "/delete")
public class DeleteProductDetails extends HttpServlet {
     @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("id");
        
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","root");
			PreparedStatement ps = con.prepareStatement("Delete from product where id = ?");
			ps.setString(1, id);
			int rs = ps.executeUpdate();
			System.out.println(rs + " : Row Deleted");
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
        RequestDispatcher rd = req.getRequestDispatcher("allproduct");
		rd.forward(req, res); 
    }
}
