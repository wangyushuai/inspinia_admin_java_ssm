package com.wys.admin.controller;

import com.wys.admin.pojo.Order;
import com.wys.util.bean.JsonResult;
import com.wys.util.bean.Page;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @ResponseBody
    @RequestMapping(value = "/list",method = RequestMethod.POST)
    public String list(Model model, Page page) {
        JsonResult<Order> result = new JsonResult<>();
        return new JSONObject(result).toString();
    }

}
