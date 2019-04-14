package com.rblog.bean;

import java.util.Date;

public class User {
    private Integer userId;

    private String userRealname;

    private String userPassword;

    private String userEmail;

    private String userNikename;

    private Integer userGender;

    private Date userRegisterdate;

    private String userHeadportait;

    private String userBackgroundpic;

    private String userDescription;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserRealname() {
        return userRealname;
    }

    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname == null ? null : userRealname.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserNikename() {
        return userNikename;
    }

    public void setUserNikename(String userNikename) {
        this.userNikename = userNikename == null ? null : userNikename.trim();
    }

    public Integer getUserGender() {
        return userGender;
    }

    public void setUserGender(Integer userGender) {
        this.userGender = userGender;
    }

    public Date getUserRegisterdate() {
        return userRegisterdate;
    }

    public void setUserRegisterdate(Date userRegisterdate) {
        this.userRegisterdate = userRegisterdate;
    }

    public String getUserHeadportait() {
        return userHeadportait;
    }

    public void setUserHeadportait(String userHeadportait) {
        this.userHeadportait = userHeadportait == null ? null : userHeadportait.trim();
    }

    public String getUserBackgroundpic() {
        return userBackgroundpic;
    }

    public void setUserBackgroundpic(String userBackgroundpic) {
        this.userBackgroundpic = userBackgroundpic == null ? null : userBackgroundpic.trim();
    }

    public String getUserDescription() {
        return userDescription;
    }

    public void setUserDescription(String userDescription) {
        this.userDescription = userDescription == null ? null : userDescription.trim();
    }
}