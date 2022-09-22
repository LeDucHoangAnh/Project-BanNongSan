package kshop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController extends BaseController {
	@RequestMapping(value = {"/bai-viet"})
	public ModelAndView Index(){
		_mvShare.setViewName("user/post/post");
		return _mvShare;
	}
}
