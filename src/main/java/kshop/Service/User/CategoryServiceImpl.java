package kshop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.ProductsDao;
import kshop.Dto.ProductsDto;

@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao productsDao;
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}
	
	
	public List<ProductsDto> GetDataProductsPaginate(int id,int start, int totalPage){
		
		return productsDao.GetAllProductsByPaginate(id, start, totalPage);
	}


	
}
