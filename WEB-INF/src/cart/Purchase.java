package cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Purchase extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		Cart cart = new Cart(request);
		
		List<CartBean> items = cart.getAsList();
		
		request.setAttribute("total", CartCommon.total(items));
		
		request.getSession(false).invalidate();
		
		getServletContext().getRequestDispatcher("/complete.jsp").forward(request, response);
	}
}
