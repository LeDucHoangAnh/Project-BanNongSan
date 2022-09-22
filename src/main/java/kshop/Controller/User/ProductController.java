package kshop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kshop.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController {
	@Autowired
	private ProductServiceImpl _productService;
	
	@RequestMapping(value = { "/chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		
		_mvShare.addObject("product",_productService.GetProductByID(id));
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory",_productService.GetProductByIDCategory(idCategory));
		return _mvShare;
	}
	
	
	@RequestMapping(value = {"/san-pham"})
	public ModelAndView Product() {
		_mvShare.setViewName("user/products/list_product");
		
		_mvShare.addObject("listproducts",_productService.GetAllDataProducts());
		return _mvShare;
	}
}
