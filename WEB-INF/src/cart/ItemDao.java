package cart;

import java.util.ArrayList;
import java.util.List;

public class ItemDao {

	private static List<Item> items = new ArrayList<Item>();
	
	static {
		items.add( new Item("1", "お茶", 120));
		items.add( new Item("2", "紅茶", 130));
		items.add( new Item("3", "水", 110));
		items.add( new Item("4", "ジュース", 140));
		items.add( new Item("5", "コーヒー", 350));
	}
	
	public List<Item> select(){
		return items;
	}
	
	public Item selectById(String id) {
		for(Item item : items) {
			if(item.id.equals(id)) {
				return item;
			}
		}
		return null;
	}
}
