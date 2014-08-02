package fancyfoods.department.chocolate;

import fancyfoods.api.Food;

public class HeartShapedChocolates implements Food {

	@Override
	public String getName() {
		return "Heart Shaped Chocolates";
	}

	@Override
	public double getPrice() {
		return 10;
	}

	@Override
	public int getQuantityInStock() {
		return 50;
	}

}
