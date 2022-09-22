package kshop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kshop.Service.User.AccountServiceImpl;

@Controller
public class UserAdminController extends BaseAdminController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	@RequestMapping(value = {"/quan-tri/nguoi-dung"})
	public ModelAndView Contact() {
		_mv.setViewName("/admin/user/user");
		_mv.addObject("listusers",accountService.GetAllUser());
		return _mv;
	}
}
