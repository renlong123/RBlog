package com.rblog.service;

import com.rblog.bean.Category;
import com.rblog.bean.CategoryExample;

import java.util.List;

public interface CategoryService {

    List<Category> selectAll();

    int selectCount(String categoryName);

    int insert(Category record);

    int deleteByPrimaryKey(Integer categoryId);

    int deleteByExample(List<Integer> list);
}
