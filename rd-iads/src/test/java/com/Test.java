/******************************************************************
 *
 *    Company:   成都市润东实业有限公司 软件开发部
 *
 *    Filename:    Test.java
 *
 *    Copyright:   Copyright (c) 2001-2014
 *
 *    @author:     Tjee
 *
 *    @version:    1.0.0
 *
 *    Create at:   2017年6月19日 下午4:54:31
 *
 *    Revision:
 *
 *    2017年6月19日 下午4:54:31
 *        - first revision
 *
 *****************************************************************/
package com;

import java.util.HashMap;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.caucho.hessian.client.HessianProxyFactory;
import com.cdrundle.cdc.iads.service.IuserService;
import com.cdrundle.cdc.iads.service.bo.UserBo;
import com.cdrundle.cdc.iads.service.bo.UserQuery;
import com.google.gson.Gson;

/**
 * <P>
 * TODO：说明与描述 Bean definition with name '/localReprotServiceImplExporter':
 * Generic bean: class
 * [org.springframework.remoting.caucho.HessianServiceExporter];
 * scope=singleton; abstract=false; lazyInit=false; autowireMode=0;
 * dependencyCheck=0; autowireCandidate=true; primary=false;
 * factoryBeanName=null; factoryMethodName=null; initMethodName=null;
 * destroyMethodName=null; defined in VFS resource
 * ["/D:/ws_space/rd-rpc/target/rd-rpc-0.0.1-SNAPSHOT/WEB-INF/classes/com/cdrundle/rpc/local/intf/service/impl/LocalReprotServiceImpl.class"]
 * 
 * @author Tjee
 * @CreateDate 2017年6月19日 下午4:54:31
 */
public class Test {

	static void test() {
		try {
			UserQuery o = new UserQuery();
			o.setName("2");
			String url = "http://localhost:8080/iads/hessian/userService";
			HessianProxyFactory factory = new HessianProxyFactory();
			IuserService reportService = (IuserService) factory.create(IuserService.class, url);
			reportService.queryUserList(o);
			Page<UserBo> page = reportService.queryUserList(o);
			Map<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("items", page.getContent());
			jsonMap.put("totalCount", page.getTotalElements());
			Gson gson = new Gson();
			System.out.println("=============");
			System.out.println(gson.toJson(jsonMap));
			System.out.println("=============");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		test();

	}
}
