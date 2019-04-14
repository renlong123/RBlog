package com.rblog.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserRealnameIsNull() {
            addCriterion("user_realname is null");
            return (Criteria) this;
        }

        public Criteria andUserRealnameIsNotNull() {
            addCriterion("user_realname is not null");
            return (Criteria) this;
        }

        public Criteria andUserRealnameEqualTo(String value) {
            addCriterion("user_realname =", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameNotEqualTo(String value) {
            addCriterion("user_realname <>", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameGreaterThan(String value) {
            addCriterion("user_realname >", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameGreaterThanOrEqualTo(String value) {
            addCriterion("user_realname >=", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameLessThan(String value) {
            addCriterion("user_realname <", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameLessThanOrEqualTo(String value) {
            addCriterion("user_realname <=", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameLike(String value) {
            addCriterion("user_realname like", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameNotLike(String value) {
            addCriterion("user_realname not like", value, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameIn(List<String> values) {
            addCriterion("user_realname in", values, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameNotIn(List<String> values) {
            addCriterion("user_realname not in", values, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameBetween(String value1, String value2) {
            addCriterion("user_realname between", value1, value2, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserRealnameNotBetween(String value1, String value2) {
            addCriterion("user_realname not between", value1, value2, "userRealname");
            return (Criteria) this;
        }

        public Criteria andUserPasswordIsNull() {
            addCriterion("user_password is null");
            return (Criteria) this;
        }

        public Criteria andUserPasswordIsNotNull() {
            addCriterion("user_password is not null");
            return (Criteria) this;
        }

        public Criteria andUserPasswordEqualTo(String value) {
            addCriterion("user_password =", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordNotEqualTo(String value) {
            addCriterion("user_password <>", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordGreaterThan(String value) {
            addCriterion("user_password >", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("user_password >=", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordLessThan(String value) {
            addCriterion("user_password <", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordLessThanOrEqualTo(String value) {
            addCriterion("user_password <=", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordLike(String value) {
            addCriterion("user_password like", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordNotLike(String value) {
            addCriterion("user_password not like", value, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordIn(List<String> values) {
            addCriterion("user_password in", values, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordNotIn(List<String> values) {
            addCriterion("user_password not in", values, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordBetween(String value1, String value2) {
            addCriterion("user_password between", value1, value2, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserPasswordNotBetween(String value1, String value2) {
            addCriterion("user_password not between", value1, value2, "userPassword");
            return (Criteria) this;
        }

        public Criteria andUserEmailIsNull() {
            addCriterion("user_email is null");
            return (Criteria) this;
        }

        public Criteria andUserEmailIsNotNull() {
            addCriterion("user_email is not null");
            return (Criteria) this;
        }

        public Criteria andUserEmailEqualTo(String value) {
            addCriterion("user_email =", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotEqualTo(String value) {
            addCriterion("user_email <>", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailGreaterThan(String value) {
            addCriterion("user_email >", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailGreaterThanOrEqualTo(String value) {
            addCriterion("user_email >=", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLessThan(String value) {
            addCriterion("user_email <", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLessThanOrEqualTo(String value) {
            addCriterion("user_email <=", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailLike(String value) {
            addCriterion("user_email like", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotLike(String value) {
            addCriterion("user_email not like", value, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailIn(List<String> values) {
            addCriterion("user_email in", values, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotIn(List<String> values) {
            addCriterion("user_email not in", values, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailBetween(String value1, String value2) {
            addCriterion("user_email between", value1, value2, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserEmailNotBetween(String value1, String value2) {
            addCriterion("user_email not between", value1, value2, "userEmail");
            return (Criteria) this;
        }

        public Criteria andUserNikenameIsNull() {
            addCriterion("user_nikename is null");
            return (Criteria) this;
        }

        public Criteria andUserNikenameIsNotNull() {
            addCriterion("user_nikename is not null");
            return (Criteria) this;
        }

        public Criteria andUserNikenameEqualTo(String value) {
            addCriterion("user_nikename =", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameNotEqualTo(String value) {
            addCriterion("user_nikename <>", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameGreaterThan(String value) {
            addCriterion("user_nikename >", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameGreaterThanOrEqualTo(String value) {
            addCriterion("user_nikename >=", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameLessThan(String value) {
            addCriterion("user_nikename <", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameLessThanOrEqualTo(String value) {
            addCriterion("user_nikename <=", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameLike(String value) {
            addCriterion("user_nikename like", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameNotLike(String value) {
            addCriterion("user_nikename not like", value, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameIn(List<String> values) {
            addCriterion("user_nikename in", values, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameNotIn(List<String> values) {
            addCriterion("user_nikename not in", values, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameBetween(String value1, String value2) {
            addCriterion("user_nikename between", value1, value2, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserNikenameNotBetween(String value1, String value2) {
            addCriterion("user_nikename not between", value1, value2, "userNikename");
            return (Criteria) this;
        }

        public Criteria andUserGenderIsNull() {
            addCriterion("user_gender is null");
            return (Criteria) this;
        }

        public Criteria andUserGenderIsNotNull() {
            addCriterion("user_gender is not null");
            return (Criteria) this;
        }

        public Criteria andUserGenderEqualTo(Integer value) {
            addCriterion("user_gender =", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderNotEqualTo(Integer value) {
            addCriterion("user_gender <>", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderGreaterThan(Integer value) {
            addCriterion("user_gender >", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_gender >=", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderLessThan(Integer value) {
            addCriterion("user_gender <", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderLessThanOrEqualTo(Integer value) {
            addCriterion("user_gender <=", value, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderIn(List<Integer> values) {
            addCriterion("user_gender in", values, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderNotIn(List<Integer> values) {
            addCriterion("user_gender not in", values, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderBetween(Integer value1, Integer value2) {
            addCriterion("user_gender between", value1, value2, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserGenderNotBetween(Integer value1, Integer value2) {
            addCriterion("user_gender not between", value1, value2, "userGender");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateIsNull() {
            addCriterion("user_registerdate is null");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateIsNotNull() {
            addCriterion("user_registerdate is not null");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateEqualTo(Date value) {
            addCriterionForJDBCDate("user_registerdate =", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateNotEqualTo(Date value) {
            addCriterionForJDBCDate("user_registerdate <>", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateGreaterThan(Date value) {
            addCriterionForJDBCDate("user_registerdate >", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("user_registerdate >=", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateLessThan(Date value) {
            addCriterionForJDBCDate("user_registerdate <", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("user_registerdate <=", value, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateIn(List<Date> values) {
            addCriterionForJDBCDate("user_registerdate in", values, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateNotIn(List<Date> values) {
            addCriterionForJDBCDate("user_registerdate not in", values, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("user_registerdate between", value1, value2, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserRegisterdateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("user_registerdate not between", value1, value2, "userRegisterdate");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitIsNull() {
            addCriterion("user_headportait is null");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitIsNotNull() {
            addCriterion("user_headportait is not null");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitEqualTo(String value) {
            addCriterion("user_headportait =", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitNotEqualTo(String value) {
            addCriterion("user_headportait <>", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitGreaterThan(String value) {
            addCriterion("user_headportait >", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitGreaterThanOrEqualTo(String value) {
            addCriterion("user_headportait >=", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitLessThan(String value) {
            addCriterion("user_headportait <", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitLessThanOrEqualTo(String value) {
            addCriterion("user_headportait <=", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitLike(String value) {
            addCriterion("user_headportait like", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitNotLike(String value) {
            addCriterion("user_headportait not like", value, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitIn(List<String> values) {
            addCriterion("user_headportait in", values, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitNotIn(List<String> values) {
            addCriterion("user_headportait not in", values, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitBetween(String value1, String value2) {
            addCriterion("user_headportait between", value1, value2, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserHeadportaitNotBetween(String value1, String value2) {
            addCriterion("user_headportait not between", value1, value2, "userHeadportait");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicIsNull() {
            addCriterion("user_backgroundpic is null");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicIsNotNull() {
            addCriterion("user_backgroundpic is not null");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicEqualTo(String value) {
            addCriterion("user_backgroundpic =", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicNotEqualTo(String value) {
            addCriterion("user_backgroundpic <>", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicGreaterThan(String value) {
            addCriterion("user_backgroundpic >", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicGreaterThanOrEqualTo(String value) {
            addCriterion("user_backgroundpic >=", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicLessThan(String value) {
            addCriterion("user_backgroundpic <", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicLessThanOrEqualTo(String value) {
            addCriterion("user_backgroundpic <=", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicLike(String value) {
            addCriterion("user_backgroundpic like", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicNotLike(String value) {
            addCriterion("user_backgroundpic not like", value, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicIn(List<String> values) {
            addCriterion("user_backgroundpic in", values, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicNotIn(List<String> values) {
            addCriterion("user_backgroundpic not in", values, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicBetween(String value1, String value2) {
            addCriterion("user_backgroundpic between", value1, value2, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserBackgroundpicNotBetween(String value1, String value2) {
            addCriterion("user_backgroundpic not between", value1, value2, "userBackgroundpic");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionIsNull() {
            addCriterion("user_description is null");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionIsNotNull() {
            addCriterion("user_description is not null");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionEqualTo(String value) {
            addCriterion("user_description =", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionNotEqualTo(String value) {
            addCriterion("user_description <>", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionGreaterThan(String value) {
            addCriterion("user_description >", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("user_description >=", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionLessThan(String value) {
            addCriterion("user_description <", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionLessThanOrEqualTo(String value) {
            addCriterion("user_description <=", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionLike(String value) {
            addCriterion("user_description like", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionNotLike(String value) {
            addCriterion("user_description not like", value, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionIn(List<String> values) {
            addCriterion("user_description in", values, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionNotIn(List<String> values) {
            addCriterion("user_description not in", values, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionBetween(String value1, String value2) {
            addCriterion("user_description between", value1, value2, "userDescription");
            return (Criteria) this;
        }

        public Criteria andUserDescriptionNotBetween(String value1, String value2) {
            addCriterion("user_description not between", value1, value2, "userDescription");
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