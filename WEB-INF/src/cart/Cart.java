package cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Cart {
	
	HttpServletRequest request;
	
	public Cart(HttpServletRequest request) {
		this.request = request;
	}
	
	public List<CartBean> getAsList(){
		Map<String, CartBean> items = getAsMap();
		List<CartBean> res = new ArrayList<CartBean>();
		
		for(String key : items.keySet()) {
			res.add(items.get(key));
		}
		
		return res;
	}
	
	public Map<String, CartBean> getAsMap(){
		HttpSession session = request.getSession(true);
		Object value = session.getAttribute("cart");
		
		if(value == null) {
			return new HashMap<String, CartBean>();
		}else {
			return (Map<String, CartBean>)value;
		}
	}
	
	public void add(String id) {
		Map<String, CartBean> map = getAsMap();
		
		CartBean value = map.get(id);
		
		if(value == null) {
			ItemDao dao = new ItemDao();
			Item item = dao.selectById(id);
			map.put(id,  new CartBean(item, 1));
		}else {
			value.count++;
		}
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("cart", map);
	}
	
	public void clear(String id) {
		Map<String, CartBean> map = getAsMap();
		CartBean value = map.get(id);
		
		if(value != null) {
			map.remove(id);
		}
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("cart", map);
	}
}
