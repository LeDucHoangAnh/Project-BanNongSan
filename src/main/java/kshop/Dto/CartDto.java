package kshop.Dto;

public class CartDto {
	private int Quanty;

	private double totalPrice;
	private ProductsDto product;

	
	
	public CartDto() {
	}

	public CartDto(int quanty, double totalPrice, ProductsDto product) {
		Quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}

	public int getQuanty() {
		return Quanty;
	}

	public void setQuanty(int quanty) {
		Quanty = quanty;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public ProductsDto getProduct() {
		return product;
	}

	public void setProduct(ProductsDto product) {
		this.product = product;
	}

}
