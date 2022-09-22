package kshop.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kshop.Entity.Admin;
import kshop.Service.Admin.AdminServiceImpl;
import kshop.Service.User.AccountServiceImpl;
import kshop.Service.User.HomeServiceImpl;
import kshop.Service.User.ProductServiceImpl;

@Controller
public class HomeAdminController extends BaseAdminController {

	@Autowired
	AdminServiceImpl adminService = new AdminServiceImpl();
	@Autowired
	private ProductServiceImpl _productService;
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	@Autowired
	HomeServiceImpl _homeService;

	@RequestMapping(value = { "/quan-tri/dang-nhap" })
	public ModelAndView Login() {
		_mv.setViewName("admin/login");
		return _mv;
	}

	@RequestMapping(value = { "/quan-tri/dash-board" })
	public ModelAndView index() {
		_mv.setViewName("admin/index");
		_mv.addObject("categorys",_homeService.GetDataCategorys());
		_mv.addObject("listusers",accountService.GetAllUser());
		_mv.addObject("listproducts", _productService.GetAllDataProducts());
		return _mv;
	}

	@RequestMapping(value = { "/quan-tri/dang-nhap" }, method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("admin") Admin admin) {
		admin = adminService.CheckAccount(admin);
		if (admin != null) {
			_mv.setViewName("redirect:quan-tri");
			session.setAttribute("LoginInfo", admin);
		} else {
			_mv.addObject("statusLoginInfo", "Đăng nhập thất bại");
		}
		return _mv;
	}

	@RequestMapping(value = { "/quan-tri/dang-xuat" }, method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");
	}
}
