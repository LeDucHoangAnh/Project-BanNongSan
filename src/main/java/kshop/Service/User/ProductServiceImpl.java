package kshop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.ProductsDao;
import kshop.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	@Override
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> listProducts = productDao.GetProductByID(id);
		return listProducts.get(0);
	}

	@Override
	public List<ProductsDto> GetProductByIDCategory(int id) {
		return productDao.GetAllProductsByID(id);
	}

	@Override
	public List<ProductsDto> GetAllDataProducts() {
		return productDao.GetAllDataProducts();
	}

}
