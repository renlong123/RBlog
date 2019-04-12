package com.rblog.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ArticleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArticleExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andArticleIdIsNull() {
            addCriterion("article_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleIdIsNotNull() {
            addCriterion("article_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleIdEqualTo(Integer value) {
            addCriterion("article_id =", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotEqualTo(Integer value) {
            addCriterion("article_id <>", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThan(Integer value) {
            addCriterion("article_id >", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_id >=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThan(Integer value) {
            addCriterion("article_id <", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_id <=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdIn(List<Integer> values) {
            addCriterion("article_id in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotIn(List<Integer> values) {
            addCriterion("article_id not in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdBetween(Integer value1, Integer value2) {
            addCriterion("article_id between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_id not between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleTitleIsNull() {
            addCriterion("article_title is null");
            return (Criteria) this;
        }

        public Criteria andArticleTitleIsNotNull() {
            addCriterion("article_title is not null");
            return (Criteria) this;
        }

        public Criteria andArticleTitleEqualTo(String value) {
            addCriterion("article_title =", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleNotEqualTo(String value) {
            addCriterion("article_title <>", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleGreaterThan(String value) {
            addCriterion("article_title >", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleGreaterThanOrEqualTo(String value) {
            addCriterion("article_title >=", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleLessThan(String value) {
            addCriterion("article_title <", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleLessThanOrEqualTo(String value) {
            addCriterion("article_title <=", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleLike(String value) {
            addCriterion("article_title like", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleNotLike(String value) {
            addCriterion("article_title not like", value, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleIn(List<String> values) {
            addCriterion("article_title in", values, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleNotIn(List<String> values) {
            addCriterion("article_title not in", values, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleBetween(String value1, String value2) {
            addCriterion("article_title between", value1, value2, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleTitleNotBetween(String value1, String value2) {
            addCriterion("article_title not between", value1, value2, "articleTitle");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateIsNull() {
            addCriterion("article_createdate is null");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateIsNotNull() {
            addCriterion("article_createdate is not null");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateEqualTo(Date value) {
            addCriterionForJDBCDate("article_createdate =", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateNotEqualTo(Date value) {
            addCriterionForJDBCDate("article_createdate <>", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateGreaterThan(Date value) {
            addCriterionForJDBCDate("article_createdate >", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("article_createdate >=", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateLessThan(Date value) {
            addCriterionForJDBCDate("article_createdate <", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("article_createdate <=", value, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateIn(List<Date> values) {
            addCriterionForJDBCDate("article_createdate in", values, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateNotIn(List<Date> values) {
            addCriterionForJDBCDate("article_createdate not in", values, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("article_createdate between", value1, value2, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleCreatedateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("article_createdate not between", value1, value2, "articleCreatedate");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyIsNull() {
            addCriterion("article_lastmodify is null");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyIsNotNull() {
            addCriterion("article_lastmodify is not null");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyEqualTo(Date value) {
            addCriterionForJDBCDate("article_lastmodify =", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyNotEqualTo(Date value) {
            addCriterionForJDBCDate("article_lastmodify <>", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyGreaterThan(Date value) {
            addCriterionForJDBCDate("article_lastmodify >", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("article_lastmodify >=", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyLessThan(Date value) {
            addCriterionForJDBCDate("article_lastmodify <", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("article_lastmodify <=", value, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyIn(List<Date> values) {
            addCriterionForJDBCDate("article_lastmodify in", values, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyNotIn(List<Date> values) {
            addCriterionForJDBCDate("article_lastmodify not in", values, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("article_lastmodify between", value1, value2, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleLastmodifyNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("article_lastmodify not between", value1, value2, "articleLastmodify");
            return (Criteria) this;
        }

        public Criteria andArticleUseridIsNull() {
            addCriterion("article_userid is null");
            return (Criteria) this;
        }

        public Criteria andArticleUseridIsNotNull() {
            addCriterion("article_userid is not null");
            return (Criteria) this;
        }

        public Criteria andArticleUseridEqualTo(Integer value) {
            addCriterion("article_userid =", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridNotEqualTo(Integer value) {
            addCriterion("article_userid <>", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridGreaterThan(Integer value) {
            addCriterion("article_userid >", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_userid >=", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridLessThan(Integer value) {
            addCriterion("article_userid <", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridLessThanOrEqualTo(Integer value) {
            addCriterion("article_userid <=", value, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridIn(List<Integer> values) {
            addCriterion("article_userid in", values, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridNotIn(List<Integer> values) {
            addCriterion("article_userid not in", values, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridBetween(Integer value1, Integer value2) {
            addCriterion("article_userid between", value1, value2, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("article_userid not between", value1, value2, "articleUserid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidIsNull() {
            addCriterion("article_categoryid is null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidIsNotNull() {
            addCriterion("article_categoryid is not null");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidEqualTo(Integer value) {
            addCriterion("article_categoryid =", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidNotEqualTo(Integer value) {
            addCriterion("article_categoryid <>", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidGreaterThan(Integer value) {
            addCriterion("article_categoryid >", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_categoryid >=", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidLessThan(Integer value) {
            addCriterion("article_categoryid <", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidLessThanOrEqualTo(Integer value) {
            addCriterion("article_categoryid <=", value, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidIn(List<Integer> values) {
            addCriterion("article_categoryid in", values, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidNotIn(List<Integer> values) {
            addCriterion("article_categoryid not in", values, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidBetween(Integer value1, Integer value2) {
            addCriterion("article_categoryid between", value1, value2, "articleCategoryid");
            return (Criteria) this;
        }

        public Criteria andArticleCategoryidNotBetween(Integer value1, Integer value2) {
            addCriterion("article_categoryid not between", value1, value2, "articleCategoryid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}