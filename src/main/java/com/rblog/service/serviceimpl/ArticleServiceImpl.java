package com.rblog.service.serviceimpl;

import com.rblog.bean.Article;
import com.rblog.bean.ArticleExample;
import com.rblog.dao.ArticleMapper;
import com.rblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Pattern;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleMapper articleMapper;

    public int saveArticleSelective(Article article){
        article.setarticleSubContent(getSubContent(article.getArticleContent()));
        int result = articleMapper.insertSelective(article);
        return result;
    }

    @Override
    public List<Article> selectAll() {
        ArticleExample example = new ArticleExample();
        return articleMapper.selectByExample(example);
    }

    @Override
    public Article selectByPrimaryKey(Integer articleId) {
        return articleMapper.selectByPrimaryKey(articleId);
    }

    @Override
    public int updateByPrimaryKeySelectiveWithBlobs(Article record) {
        record.setarticleSubContent(getSubContent(record.getArticleContent()));
        return articleMapper.updateByPrimaryKeySelectiveWithBlobs(record);
    }

    /**
     * 通过id删除，service实现层
     * @param articleId
     * @return
     */
    @Override
    public int deleteByPrimaryKey(Integer articleId) {
        return articleMapper.deleteByPrimaryKey(articleId);
    }

    /**
     * 生成缩略内容，去掉各类标签
     * @param content
     * @return
     */
    public String getSubContent(String content){
        String regix = "<img.+?>";
        String subString = content.replaceAll(regix,"图片").replaceAll("<.+?>","").replaceAll("&nbsp;","").trim();
        subString = subString.substring(0,subString.length()>100?100:subString.length())+"...";
        System.out.println(subString);
        return subString;
    }

    @Override
    public int deleteBatch(List<Integer> ids){
        ArticleExample example = new ArticleExample();
        ArticleExample.Criteria criteria = example.createCriteria();
        criteria.andArticleIdIn(ids);
        int result = articleMapper.deleteByExample(example);
        return result;
    }


}
