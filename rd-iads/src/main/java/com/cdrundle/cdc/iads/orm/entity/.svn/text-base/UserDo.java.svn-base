package com.cdrundle.cdc.iads.orm.entity;


import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by tjee on 2017/6/6.
 */
@Entity
@Table(name="aaa_user")
public class UserDo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String sex;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }


}
