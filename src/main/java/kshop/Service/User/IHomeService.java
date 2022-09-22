package kshop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dto.ProductsDto;
import kshop.Entity.Categorys;
import kshop.Entity.Menus;
import kshop.Entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
}
