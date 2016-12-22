package com.bsoft.mvc.controller;

import com.bsoft.mvc.bean.SysOffice;
import com.bsoft.util.AppContextHolder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Controller()
@RequestMapping("/office")
public class OfficeController {

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void createOffice(@ModelAttribute SysOffice office) {
        SessionFactory sf = AppContextHolder.getBean(AppContextHolder.DEFAULT_SESSION_FACTORY, SessionFactory.class);
        Session ss = null;
        try {
            ss = sf.openSession();
            ss.beginTransaction();
            Serializable id = ss.save("SYS_Office", office);
            System.out.println(id);

            Map m = new HashMap();
            m.put("officeCode", "map");
            m.put("officeName", "map");
            id = ss.save("SYS_Office", m);
            System.out.println(id);
            ss.getTransaction().commit();

            SysOffice so = (SysOffice) ss.get(SysOffice.class, 140L);
            System.out.println(so);
        } catch (Exception e) {
            e.printStackTrace();
            ss.getTransaction().rollback();
        } finally {
            if (ss != null) {
                ss.close();
            }
        }
    }
}
