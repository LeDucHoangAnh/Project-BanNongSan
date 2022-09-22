package kshop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController extends BaseController {
	@RequestMapping(value = {"/lien-he"})
	public ModelAndView Index(){
		_mvShare.setViewName("user/contact/contact");
		return _mvShare;
	}
}
