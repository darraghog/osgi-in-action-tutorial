package fancyfoods.department.chocolate;

import fancyfoods.api.Food;

public class SquareChocolates implements Food {

	@Override
	public String getName() {
		return "Square Chocolates";
	}

	@Override
	public double getPrice() {
		return 5.0;
	}

	@Override
	public int getQuantityInStock() {
		return 200;
	}

}
