package cart;

import java.util.List;

public class CartCommon {

	public static int total(List<CartBean> beans) {
		int total = 0;
		
		for(CartBean bean : beans) {
			total += (bean.count * bean.price);
		}
		return total;
	}
}
