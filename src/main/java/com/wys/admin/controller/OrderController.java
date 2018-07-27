package com.wys.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangyushuai@fang.com on 2018/7/17.
 */
@Controller
@RequestMapping(value = "/order")
public class OrderController {

    @RequestMapping(value = "/list")
    public String list(Model model) {
        return "/admin/order/list";
    }

}
