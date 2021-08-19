package cart;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Index extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ItemDao dao = new ItemDao();
		
		List<Item> items = dao.select();
		
		request.setAttribute("items", items);
		
		Cart cart = new Cart(request);
		
		Map<String, CartBean> beans = cart.getAsMap();
		
		request.setAttribute("map", beans);
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}
}
