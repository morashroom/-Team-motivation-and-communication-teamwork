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
 * Servlet implementation class login_check
 */
@WebServlet("/login_checkServlet")
public class login_checkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_checkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    int i=0;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//System.out.println("login");	
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username1");
	    String password = request.getParameter("password1");
	    
	    User tempUser= DBUtil.getInstance().getUser(username);
	    
//	    if(tempUser==null) {
//	    	response.sendRedirect("login_failed.jsp");
//	    }
	    
	    
	    if(tempUser!=null&&tempUser.getPassword().equals(password)) {
	    	//System.out.println(++i+"次");
	    	DBUtil.getInstance().userAdd();
	    	String ipnum=request.getRemoteAddr();
	    	 response.sendRedirect("login_success.jsp?username=" + username + "&password=" + password+"&ip="+ipnum);
	    }else {
	    	response.sendRedirect("login_failed.jsp?username=" + username + "&password=" + password);
	    }
		
	}

}
