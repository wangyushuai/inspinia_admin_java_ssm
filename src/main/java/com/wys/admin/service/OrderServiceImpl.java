package com.wys.admin.service;

import com.wys.admin.mapper.OrderMapper;
import com.wys.admin.pojo.Order;
import com.wys.admin.pojo.OrderExample;
import com.wys.admin.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangyushuai@fang.com on 2018/7/17.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;
    @Autowired
    UserService userService;

    @Override
    public void add() {

    }

    @Override
    public void delete() {

    }

    @Override
    public void update() {

    }

    @Override
    public Order get(int id) {
        return null;
    }

    @Override
    public List list() {
        OrderExample example = new OrderExample();
        example.setOrderByClause("id desc");
        List<Order> result = orderMapper.selectByExample(example);
        setUser(result);
        return result;
    }

    public void setUser(List<Order> os) {
        for (Order o: os) {
            setUser(o);
        }
    }

    public void setUser(Order order) {
        User user = userService.get(order.getId());
        order.setUser(user);
    }

}
