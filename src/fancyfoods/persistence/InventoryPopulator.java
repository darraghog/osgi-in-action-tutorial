package fancyfoods.persistence;

import fancyfoods.api.Inventory;

public class InventoryPopulator {
	private Inventory inventory;
	
	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}
	
	public Inventory getInventory() {
		return this.inventory;
	}
	
	public void populate() {
		
		boolean isInventoryPopulated = (inventory.getFoodCount() >0);
		
		if (!isInventoryPopulated) {
			inventory.createFood("Blue cheese", 3.45, 10);
			inventory.createFood("Wensleydale cheese", 1.81, 15);
			inventory.createFood("Normal chocolates", 6.9, 8);
			inventory.createFood("Venezualan Beaver cheese", 12, 50);
			inventory.createFood("Chedder", 1, 25);
			inventory.createFood("Heart shaped treats",9.99, 100);
		}
	}
	
}
