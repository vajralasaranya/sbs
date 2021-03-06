package com.asu.cse545.group12.controller;

import org.apache.log4j.Logger;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.asu.cse545.group12.domain.Form;
import com.asu.cse545.group12.domain.Users;
import com.asu.cse545.group12.services.AccountService;
import com.asu.cse545.group12.services.AuthorizationService;
import com.asu.cse545.group12.services.UserService;

@Controller
public class HomePageController {
	private static final Logger logger = Logger.getLogger(HomePageController.class);
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	UserService userService;
	@RequestMapping(value = "/individual", method = RequestMethod.GET)
	public ModelAndView getIndividualHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("individual");
		String username = (String) request.getSession(false).getAttribute("username");
		//username = null; //testing
		if(username == null || username.equals(""))
		{
			
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
			Users user = userService.getUserByUserName(username);
			modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
			return modelView;
		}
	}
	
	@RequestMapping(value = "/accountDetails", method = RequestMethod.GET)
	public ModelAndView gotoIndividualHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("accountDetails");
		HttpSession session = request.getSession(false);
		String username = (String) session.getAttribute("username");
		//username = ""; //testing
		if(username == null || username.equals(""))
		{
			
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
			modelView.addObject("accountsRows", accountService.getAccounts(userService.getUserByUserName(username).getUserId()));
			return modelView;
		}
	}
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView getAdminHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Admin Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("admin");
		String username = (String) request.getSession(false).getAttribute("username");
		
		if(username == null || username.equals(""))
		{
			
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
		Users user = userService.getUserByUserName(username);
		modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
		return modelView;
		}
	}
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public ModelAndView getManagerHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Manager Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("manager");
		String username = (String) request.getSession(false).getAttribute("username");
		if(username == null || username.equals(""))
		{
			
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
		Users user = userService.getUserByUserName(username);
		modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
		return modelView;
		}
	}
	@RequestMapping(value = "/regular", method = RequestMethod.GET)
	public ModelAndView getRegularHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Regular Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("regular");
		String username = (String) request.getSession(false).getAttribute("username");
		if(username == null || username.equals(""))
		{
			//ModelAndView modelView = new ModelAndView();
			//modelView.addObject("form", new Form());
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
		Users user = userService.getUserByUserName(username);
		modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
		return modelView;
		}
	}
	@RequestMapping(value = "/merchant", method = RequestMethod.GET)
	public ModelAndView getMerchantHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Merchant Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("merchant");
		String username = (String) request.getSession(false).getAttribute("username");
		if(username == null || username.equals(""))
		{
			//ModelAndView modelView = new ModelAndView();
			//modelView.addObject("form", new Form());
			modelView.addObject("error", "User does not exit.");

			modelView.setViewName("login");
			return modelView;
		}
		else{
			Users user = userService.getUserByUserName(username);
			modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
			return modelView;
		}
	}
	
	@RequestMapping(value = "/government", method = RequestMethod.GET)
	public ModelAndView getGovernmentHomePage(HttpServletRequest request) {
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("Government Home Page requested");
		}
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("government");
		String username = (String) request.getSession(false).getAttribute("username");
		if(username == null || username.equals(""))
		{
			//ModelAndView modelView = new ModelAndView();
			//modelView.addObject("form", new Form());
			modelView.addObject("error", "User does not exit. Enter valid username");

			modelView.setViewName("login");
			return modelView;
		}
		else{
		Users user = userService.getUserByUserName(username);
		modelView.addObject("userinformation", user.getFirstName()+" "+user.getLastName());
		return modelView;
		}
	}
}
