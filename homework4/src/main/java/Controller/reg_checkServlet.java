package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DBUtil;

import java.io.IOException;

import Javabean.User;

/**
 * Servlet implementation class reg_checkServlet
 */
@WebServlet("/reg_checkServlet")
public class reg_checkServlet extends HttpServlet {
	
	private User last_userUser=new User();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg_checkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmpassword=request.getParameter("confirmpassword"); 
    System.out.println(username);
    if (username!=""&&password!=""&&confirmpassword!=""&&password.equals(confirmpassword)) {
        
    	
        User userBean = new User();
		userBean.setUsername(username);
		userBean.setPassword(password);
		
		last_userUser=userBean;
		
		boolean b = DBUtil.getInstance().insertUser(userBean);
		response.sendRedirect("reg_success.jsp?username=" + username + "&password=" + password);
    } else {
        response.sendRedirect("reg_failed.jsp?username=" + username + "&password=" + password);
    }	
    
    
    
    
	}

}
