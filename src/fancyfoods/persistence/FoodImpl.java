package fancyfoods.persistence;

import javax.persistence.Entity;
import javax.persistence.Id;

import fancyfoods.api.Food;

@Entity(name="FOOD")
public class FoodImpl implements Food {
	
	@Id
	private String name;
	
	private double price;
	private int quantity;
	
	public FoodImpl(String name, double price, int quantity) {
		this();
		this.name=name;
		this.price=price;
		this.quantity=quantity;
	}
	
	public FoodImpl() {
		this.name = null;
		this.price = 0;
		this.quantity=0;
	}

	@Override
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override 
	public double getPrice() {
		return this.price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public int getQuantityInStock() {
		return this.quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
