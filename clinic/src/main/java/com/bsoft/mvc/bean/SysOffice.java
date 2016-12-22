package com.bsoft.mvc.bean;

public class SysOffice {
    private Long id;
    private String officeCode;
    private String officeName;
    private String address;
    private String parentID;
    private String organizeType;
    private String telphone;
    private String email;
    private String plsx;
    private String pyCode;
    private String logOff;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOfficeCode() {
        return officeCode;
    }

    public void setOfficeCode(String officeCode) {
        this.officeCode = officeCode;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getParentID() {
        return parentID;
    }

    public void setParentID(String parentID) {
        this.parentID = parentID;
    }

    public String getOrganizeType() {
        return organizeType;
    }

    public void setOrganizeType(String organizeType) {
        this.organizeType = organizeType;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPlsx() {
        return plsx;
    }

    public void setPlsx(String plsx) {
        this.plsx = plsx;
    }

    public String getPyCode() {
        return pyCode;
    }

    public void setPyCode(String pyCode) {
        this.pyCode = pyCode;
    }

    public String getLogOff() {
        return logOff;
    }

    public void setLogOff(String logOff) {
        this.logOff = logOff;
    }
}
