package kshop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactAdminController extends BaseAdminController {
	@RequestMapping(value = {"/quan-tri/lien-he"})
	public ModelAndView Contact() {
		_mv.setViewName("/admin/contact/contact");
		return _mv;
	}
}
