package com.rblog.bean;

import javafx.beans.DefaultProperty;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class Article {
    private Integer articleId;

    private String articleTitle;

    private Date articleCreatedate;

    private Date articleLastmodify;

    private Integer articleUserid;

    private Integer articleCategoryid;

    private String articleContent;

    private String articleSubContent;

    public String getarticleSubContent() {
        return articleSubContent;
    }

    public void setarticleSubContent(String articleSubContent) {
        this.articleSubContent = articleSubContent;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle == null ? null : articleTitle.trim();
    }

    public Date getArticleCreatedate() {
        return articleCreatedate;
    }

    public void setArticleCreatedate(Date articleCreatedate) {
        this.articleCreatedate = articleCreatedate;
    }

    public Date getArticleLastmodify() {
        return articleLastmodify;
    }

    public void setArticleLastmodify(Date articleLastmodify) {
        this.articleLastmodify = articleLastmodify;
    }

    public Integer getArticleUserid() {
        return articleUserid;
    }

    public void setArticleUserid(Integer articleUserid) {
        this.articleUserid = articleUserid;
    }

    public Integer getArticleCategoryid() {
        return articleCategoryid;
    }

    public void setArticleCategoryid(Integer articleCategoryid) {
        this.articleCategoryid = articleCategoryid;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent == null ? null : articleContent.trim();
    }

    @Override
    public String toString() {
        return "Article{" +
                "articleId=" + articleId +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleCreatedate=" + articleCreatedate +
                ", articleLastmodify=" + articleLastmodify +
                ", articleUserid=" + articleUserid +
                ", articleCategoryid=" + articleCategoryid +
                ", articleSubContent='" + articleSubContent + '\'' +
                '}';
    }
}