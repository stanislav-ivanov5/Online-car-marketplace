package mobile.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mobile.dao.UserDAO;
import mobile.exceptions.InvalidParameterException;
import mobile.main.DBConnector;
import mobile.users.User;

@WebServlet({ "/Register" })
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("[Register servlet]---doPost");

		Connection con = null;
		try {
			response.setContentType("text/html");

			UserDAO dao = new UserDAO();

			String username = request.getParameter("username");
			String pass = request.getParameter("password");
			String phone = request.getParameter("phone");
			String userType = request.getParameter("type");
			String email = request.getParameter("email");

			if (username == null || pass == null || phone == null || userType == null || email == null) {
				response.sendRedirect("log-in.html");
				return;
			}

			System.out.println("Before exist");
			boolean exist = dao.doesExist(email);

			System.out.println("After exist");

			System.out.println(username + " " + email + " " + phone + " " + userType + " " + pass);

			if (exist) {
				response.sendRedirect("index.html");
			} else {

				// add to DB, CREATE user
				User user = new User(username, email, phone, userType, pass);
				dao.addUser(user);

				int id = user.getDBId();

				HttpSession session = request.getSession();
				session.setAttribute("session_id", session.getId());
				session.setAttribute("user_id", user.getDBId());
				session.setAttribute("user_name", username);

				response.addCookie(new Cookie("user_id", (id + "")));

				response.sendRedirect("car-list.html");
			}
		} catch (InvalidParameterException e) {
			e.printStackTrace();
		}

	}
}