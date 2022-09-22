package kshop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kshop.Service.User.HomeServiceImpl;

@Controller
public class CategoryAdminController extends BaseAdminController {
	
	@Autowired
	HomeServiceImpl _homeService;
	@RequestMapping(value = {"/quan-tri/loai-san-pham"})
	public ModelAndView Category() {
		_mv.setViewName("admin/category/category");
		_mv.addObject("categorys",_homeService.GetDataCategorys());
		return _mv;
	}
}
