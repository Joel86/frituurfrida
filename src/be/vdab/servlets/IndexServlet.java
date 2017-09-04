package be.vdab.servlets;

import java.io.IOException;
import java.time.DayOfWeek;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/index.htm")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/WEB-INF/JSP/index.jsp";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocalDate vandaag = LocalDate.now();
		DayOfWeek weekdag = vandaag.getDayOfWeek();
		request.setAttribute("openGesloten", weekdag == DayOfWeek.MONDAY || weekdag == DayOfWeek.THURSDAY ?
		"gesloten" : "open");
		request.getRequestDispatcher(VIEW).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
}
