package com.bsoft.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bsoft.mvc.bean.MsGhks;
import com.bsoft.util.AppContextHolder;
@Controller
public class GhksController {
	@RequestMapping(value="/ghks/list",method=RequestMethod.GET)
      public void doQuery(HttpServletRequest req,HttpServletResponse res){
		SessionFactory sf=(SessionFactory)AppContextHolder.getBean("mySessionFactory",SessionFactory.class);
		
	try {
		Session ss=sf.openSession();
		Query query=ss.createQuery("from com.bsoft.mvc.bean.MsGhks");
		List<MsGhks> ghksList=(List<MsGhks>) query.list();
		//System.out.println(ghksList);
		req.setAttribute("ghksList", ghksList);
		req.getRequestDispatcher("/ghks/list.jsp").forward(req, res);
	} catch (ServletException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
}
