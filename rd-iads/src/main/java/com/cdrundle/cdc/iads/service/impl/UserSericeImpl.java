package com.cdrundle.cdc.iads.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.cdrundle.cdc.iads.orm.dao.IDao;
import com.cdrundle.cdc.iads.orm.entity.UserDo;
import com.cdrundle.cdc.iads.service.IuserService;
import com.cdrundle.cdc.iads.service.bo.UserBo;
import com.cdrundle.cdc.iads.service.bo.UserQuery;
import com.cdrundle.cdc.iads.web.HessianService;
import com.cdrundle.cdc.iads.web.PageConverterFactory;


/**
 * Created by tjee on 2017/6/7.
 * @HessianService(Interface ="com.cdrundle.cdc.iads.service.IuserService",URL = "userService")
 */
@HessianService(Interface ="com.cdrundle.cdc.iads.service.IuserService",URL = "userService")
@Transactional
public class UserSericeImpl implements IuserService {

    @Autowired
    IDao dao;

    @Override
    public Page<UserBo> queryUserList(UserQuery userQuery) {
        Pageable pageRequest = null;
        if (userQuery.getHasPaging()) {
            pageRequest = new PageRequest(userQuery.getPage() - 1, userQuery.getLimit(),userQuery.getSortObj() );
        }
        Specification<UserDo> specification = new Specification<UserDo>() {
            /**
             * Creates a WHERE clause for a query of the referenced entity in form of a {@link Predicate} for the given
             * {@link Root} and {@link CriteriaQuery}.
             *
             * @param root
             * @param query
             * @param cb
             * @return a {@link Predicate}, must not be {@literal null}.
             */
            @Override
            public Predicate toPredicate(Root<UserDo> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                List<Predicate> plist = new ArrayList<>();
                if (StringUtils.isNotBlank(userQuery.getName())) {
                    plist.add(cb.like(root.get("name"), "%" + userQuery.getName() + "%"));
                }
                if (CollectionUtils.isNotEmpty(plist)) {
                    query.where(plist.toArray(new Predicate[plist.size()] ));
                }
                return null;
            }
        };
        return  dao.findAll(specification, pageRequest).map(PageConverterFactory.getInstance().getConverter(UserDo.class, UserBo.class));
    }
}