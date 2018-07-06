package com.wys.admin.service;

import com.wys.admin.pojo.Product;

import java.util.List;

/**
 * Created by wangyushuai@fang.com on 2018/6/14.
 */
public interface ProductService {
    void add(Product product);
    void delete(int id);
    void update(Product product);
    Product get(int id);
    List list(int cid);
}
