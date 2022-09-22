package kshop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartAdminController extends BaseAdminController {
	@RequestMapping(value = {"/quan-tri/don-hang"})
	public ModelAndView Contact() {
		_mv.setViewName("/admin/cart/cart");
		return _mv;
	}
}
