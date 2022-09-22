package kshop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dto.ProductsDto;

@Service
public interface IProductService {
	@Autowired
	
	public ProductsDto GetProductByID(long id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
	
	public List<ProductsDto> GetAllDataProducts();
}
