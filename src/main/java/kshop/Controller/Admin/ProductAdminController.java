package kshop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kshop.Service.User.ProductServiceImpl;

@Controller
public class ProductAdminController extends BaseAdminController {
	@Autowired
	private ProductServiceImpl _productService;

	@RequestMapping(value = { "/quan-tri/san-pham" })
	public ModelAndView Category() {
		_mv.setViewName("admin/product/product");
		_mv.addObject("listproducts", _productService.GetAllDataProducts());
		return _mv;
	}
}
