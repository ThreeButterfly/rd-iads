package com.cdrundle.cdc.iads.controller;

import com.cdrundle.cdc.iads.service.IuserService;
import com.cdrundle.cdc.iads.service.bo.UserBo;
import com.cdrundle.cdc.iads.service.bo.UserQuery;
import com.cdrundle.common.exception.DataQueryException;
import com.cdrundle.common.exception.NoDataException;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class TestController {

    @Autowired
    IuserService userService;

    @RequestMapping("test")
    @ResponseBody
    public String getInfo(UserQuery query) throws NoDataException, DataQueryException {
        Map<String, Object> result = new HashMap<>();


        Page<UserBo> page =userService.queryUserList(query);
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("items", page.getContent());
        jsonMap.put("totalCount", page.getTotalElements());
        Gson gson = new Gson();

        return gson.toJson(jsonMap);
    }

    @RequestMapping("index1")
    public String getInfo2() throws NoDataException, DataQueryException {

        return "index";
    }
}
