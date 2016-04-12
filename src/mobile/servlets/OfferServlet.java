package mobile.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.car.Car;
import mobile.dao.CarDAO;
import mobile.exceptions.InvalidParameterException;
import mobile.main.StaticStorage;
import mobile.users.User;

/**
 * Servlet implementation class OfferServlet
 */
@WebServlet("/Offer")
public class OfferServlet extends HttpServlet {

	private static final long serialVersionUID = -61955112811959900L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String marka = request.getParameter("marka");
		String model = request.getParameter("model");
		String year = request.getParameter("year");
		String city = request.getParameter("city");
		String price = request.getParameter("price");

		System.out.println(marka);
		System.out.println(model);
		System.out.println(year);
		System.out.println(city);
		System.out.println(price);

		CarDAO carDao = new CarDAO();
		StaticStorage.initializeStorage();
		try {

			int id = 0;
			Cookie[] cookies = request.getCookies();
			for (Cookie c : cookies) {
				if (c.equals("user_id")) {
					id = Integer.parseInt(c.getValue());
				}
			}
			if (request.getSession(false) == null) {
				// no session available
				response.sendRedirect("./log-in.html");
				return;
			}
			System.out.println("[Offer Servlet] Found Coockie user_id - " + id);

			int markaId = StaticStorage.marks.get(marka);
			int modelId = StaticStorage.models.get(model);

			Car car = new Car(500, 600, 2005, 2, 2, markaId, modelId, 1, 2, 1, id);
			carDao.addCar(car);

			System.out.println("[Offer Servlet] Car added to db");
			response.sendRedirect("car-details.html");

			// response.sendRedirect(./);

		} catch (InvalidParameterException e) {
			e.printStackTrace();
		}

	}

}
