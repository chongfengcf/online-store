package com.oldstore.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;


public class CarShop implements Serializable {
    private Integer id;

    private Integer fkEcArticleId;

    private Integer articleNum;

    private Date createDate;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFkEcArticleId() {
        return fkEcArticleId;
    }

    public void setFkEcArticleId(Integer fkEcArticleId) {
        this.fkEcArticleId = fkEcArticleId;
    }

    public Integer getArticleNum() {
        return articleNum;
    }

    public void setArticleNum(Integer articleNum) {
        this.articleNum = articleNum;
    }

    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        CarShop other = (CarShop) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getFkEcArticleId() == null ? other.getFkEcArticleId() == null : this.getFkEcArticleId().equals(other.getFkEcArticleId()))
            && (this.getArticleNum() == null ? other.getArticleNum() == null : this.getArticleNum().equals(other.getArticleNum()))
            && (this.getCreateDate() == null ? other.getCreateDate() == null : this.getCreateDate().equals(other.getCreateDate()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getFkEcArticleId() == null) ? 0 : getFkEcArticleId().hashCode());
        result = prime * result + ((getArticleNum() == null) ? 0 : getArticleNum().hashCode());
        result = prime * result + ((getCreateDate() == null) ? 0 : getCreateDate().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", fkEcArticleId=").append(fkEcArticleId);
        sb.append(", articleNum=").append(articleNum);
        sb.append(", createDate=").append(createDate);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}