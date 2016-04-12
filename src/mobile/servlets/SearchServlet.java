package mobile.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/Search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		request.getParameterValues(arg0)
//		Enumeration<String> parameters = new ArrayList<>();
//		
//		for(String p : parameters) {
//			request.getParameter(p);
//		}
//		
//		request.getParameter("manufacturer");
		
		// select manufacturer from manufacturers

/* 		select from where 
		for(String[] arr) 
		if(oneParam) {
			where ()arr[i] = "value from the user (from drop)"
					'AND'
		}
		if() -> ';'
	}
	
*/	
	}
}
