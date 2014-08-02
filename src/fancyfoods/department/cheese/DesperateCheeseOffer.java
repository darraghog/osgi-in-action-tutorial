package fancyfoods.department.cheese;

import java.util.List;

import fancyfoods.api.Food;
import fancyfoods.api.Inventory;
import fancyfoods.api.SpecialOffer;

public class DesperateCheeseOffer implements SpecialOffer {
	private Inventory inventory;
	
	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}

	@Override
	public Food getOfferFood() {
		List<Food> cheeses = inventory.getFoodsWhoseNameContains("cheese",1);
		Food leastPopularCheese= cheeses.get(0);
		return leastPopularCheese;
	}

	@Override
	public String getDescription() {
		return "A wonderful surprise for someone cheesy.";
	}
	
	
}
