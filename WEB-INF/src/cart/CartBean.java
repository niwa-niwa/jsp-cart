package cart;

public class CartBean extends Item {

	public int count;
	
	public CartBean(Item item, Integer count) {
		super(item.id, item.name, item.price);
		this.count = count;
	}
}
