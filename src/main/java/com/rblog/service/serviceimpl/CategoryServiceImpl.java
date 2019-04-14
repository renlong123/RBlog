package com.rblog.service.serviceimpl;

import com.rblog.bean.Category;
import com.rblog.bean.CategoryExample;
import com.rblog.dao.ArticleMapper;
import com.rblog.dao.CategoryMapper;
import com.rblog.service.ArticleService;
import com.rblog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryMapper categoryMapper;

    @Autowired
    ArticleService articleService;

    @Override
    public List<Category> selectAll() {
        CategoryExample example = new CategoryExample();
        return categoryMapper.selectByExample(example);
    }

    @Override
    public int selectCount(String categoryName) {
        return categoryMapper.selectCount(categoryName);
    }

    @Override
    public int insert(Category record) {
        return categoryMapper.insert(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer categoryId) {
        int result1 = articleService.deleteByCategory(categoryId);
        int result2 = categoryMapper.deleteByPrimaryKey(categoryId);
        return result1+result2;
    }

    @Override
    public int deleteByExample(List<Integer> list) {
        CategoryExample example = new CategoryExample();
        CategoryExample.Criteria criteria = example.createCriteria();
        criteria.andCategoryIdIn(list);
        return categoryMapper.deleteByExample(example);
    }

}
