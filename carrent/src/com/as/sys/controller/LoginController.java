package com.as.sys.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.as.sys.constast.SysConstast;
import com.as.sys.domain.User;
import com.as.sys.service.LogService;
import com.as.sys.service.UserService;
import com.as.sys.utils.WebUtils;
import com.as.sys.vo.LogVo;
import com.as.sys.vo.UserVo;

/**
 * 用户登陆控制器
 * 
 *
 */
@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private LogService logService;
	/**
	 * 跳转到登陆页面
	 */
	@RequestMapping("toLogin")
	public String toLogin() {
		return "system/main/login";
	}
	
	
	/**
	 * 登陆方法
	 */
	@RequestMapping("login")
	public String login(UserVo userVo,Model model) {
		User user=this.userService.login(userVo);
		if(null!=user) {
			//放到session
			WebUtils.getHttpSession().setAttribute("user", user);
			//记录登陆日志 向sys_login_log里面插入数据
			LogVo logInfoVo=new LogVo();
			logInfoVo.setLogintime(new Date());
			logInfoVo.setLoginname(user.getRealname()+"-"+user.getLoginname());
			logInfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
			
			logService.addLog(logInfoVo);
			return "system/main/index";
		}else {
			model.addAttribute("error",SysConstast.USER_LOGIN_ERROR_MSG);
			return "system/main/login";
		}
		
	}

	@RequestMapping("logout")
	public String logout() {
		WebUtils.getHttpSession().invalidate();
		
		return "system/main/login";
	}
}
