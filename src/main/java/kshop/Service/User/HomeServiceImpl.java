package kshop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.ProductsDao;
import kshop.Dao.SlidesDao;
import kshop.Dto.ProductsDto;
import kshop.Entity.Categorys;
import kshop.Entity.Menus;
import kshop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao SlidesDao;
	@Autowired
	private kshop.Dao.CategorysDao CategorysDao;
	@Autowired
	private kshop.Dao.MenusDao MenusDao;
	
	@Autowired
	private ProductsDao productsDao;
	
	@Override
	public List<Slides> GetDataSlide() {
		return SlidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		// TODO Auto-generated method stub
		return CategorysDao.GetDataCategorys();
	}
	public List<Menus> GetDataMenus(){
		return MenusDao.GetDataMenus();
	}
	
	public List<ProductsDto> GetDataProducts(){
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}

}
