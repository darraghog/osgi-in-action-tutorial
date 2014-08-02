package fancyfoods.department.chocolate;

import java.util.Calendar;
import fancyfoods.api.Inventory;
import java.util.List;

import fancyfoods.api.Food;
import fancyfoods.api.SpecialOffer;

public class RomanticChocolateOffer implements SpecialOffer {
	
	private Inventory inventory;

	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}

	@Override
	public Food getOfferFood() {
		if (isNearValentinesDay()) {
			List<Food> chocolateHearts = inventory.getFoodsWhoseNameContains("heart",1);
			Food leastPopularHearts= chocolateHearts.get(0);
			return leastPopularHearts;
		} else {
			List<Food> chocolates = inventory.getFoodsWhoseNameContains("chocolates",1);
			Food leastPopularChocolates = chocolates.get(0);
			return leastPopularChocolates;
		}
	}

	@Override
	public String getDescription() {
		return "A wonderful surprise for someone you want to impress.";
	}
	
	private boolean isNearValentinesDay() {
		Calendar today = Calendar.getInstance();
	
		return today.get(Calendar.MONTH) == Calendar.FEBRUARY 
				&& today.get(Calendar.DAY_OF_MONTH) < 14;
	}

}
