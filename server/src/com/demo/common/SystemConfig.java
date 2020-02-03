package com.demo.common;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.beetl.core.GroupTemplate;
import org.beetl.ext.jfinal3.JFinal3BeetlRenderFactory;

import com.demo.controller.BaseEnterpriseController;
import com.demo.controller.BaseMenuController;
import com.demo.controller.BaseMessageController;
import com.demo.controller.BaseModuleController;
import com.demo.controller.BaseStateController;
import com.demo.controller.BaseTypeController;
import com.demo.controller.BaseUserController;
import com.demo.controller.BaseUserTypeController;
import com.demo.controller.IndexController;
import com.demo.controller.OrderController;
import com.demo.controller.OreAreaController;
import com.demo.controller.OreDevelopController;
import com.demo.controller.OreExploitRecordController;
import com.demo.controller.StaffController;
import com.demo.controller.StatisticsController;
import com.demo.controller.TransactionRecordController;
import com.demo.controller.TransportController;
import com.demo.controller.UploadController;
import com.demo.models.BaseEnterpriseModel;
import com.demo.models.BaseMenuModel;
import com.demo.models.BaseMessageModel;
import com.demo.models.BaseModuleModel;
import com.demo.models.BaseStateModel;
import com.demo.models.BaseTypeModel;
import com.demo.models.BaseUserModel;
import com.demo.models.BaseUserTypeModel;
import com.demo.models.OrderModel;
import com.demo.models.OreAreaModel;
import com.demo.models.OreDevelopModel;
import com.demo.models.OreExploitRecordModel;
import com.demo.models.StaffModel;
import com.demo.models.TransactionRecordModel;
import com.demo.models.TransportModel;
import com.demo.utils.CrossInterceptor;
import com.demo.utils.DatabaseUtil;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class SystemConfig extends JFinalConfig {
	
	public static final int port = 8888;
	
	
	
	public static void main(String[] args) {
		//PathKit.setWebRootPath("/WebRoot");
		
		JFinal.start("WebRoot", port, "/", 5);
		
	}
	
	public void init(){
		PropKit.use("db_config.txt");
		DatabaseUtil.init();
	}
	
	public void configConstant(Constants me) {
		
		init();
		
		//PropKit.use("db_config.txt");
		me.setDevMode(PropKit.getBoolean("devMode", true));//热更新调试模式
		me.setViewType(ViewType.JSP); 	
		
		JFinal3BeetlRenderFactory rf = new JFinal3BeetlRenderFactory();
		rf.config();
		me.setRenderFactory(rf);
		GroupTemplate gt = rf.groupTemplate;
		Map<String, Object> shard = new HashMap<String, Object>();// 鍏变韩鍙橀噺
		shard.put("ctx", JFinal.me().getContextPath());// 娣诲姞鍏变韩鍙橀噺涓婁笅鏂囪矾锟�?
		gt.setSharedVars(shard);// 璁剧疆鍏变韩鍙橀噺
		me.setMaxPostSize(1200000000);
		
		//me.setBaseUploadPath("/upload"); 
	}
	
	public void configRoute(Routes me) {
		me.add("/", IndexController.class);	
		me.add("/upload", UploadController.class);
		me.add("statistics",StatisticsController.class);
		
		me.add("base_enterprise",BaseEnterpriseController.class);
		me.add("base_menu",BaseMenuController.class);
		me.add("base_message",BaseMessageController.class);
		me.add("base_module",BaseModuleController.class);
		me.add("base_state",BaseStateController.class);
		me.add("base_type",BaseTypeController.class);
		me.add("base_user",BaseUserController.class);
		me.add("base_user_type",BaseUserTypeController.class);
		me.add("base_order",OrderController.class);
		me.add("ore_area",OreAreaController.class);
		me.add("ore_develop",OreDevelopController.class);
		me.add("ore_exploit_record",OreExploitRecordController.class);
		me.add("staff",StaffController.class);
		me.add("transaction_record",TransactionRecordController.class);
		me.add("transport",TransportController.class);

	
	}
	 
	public void configPlugin(Plugins me) {
		C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
		me.add(c3p0Plugin);
		
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
	
//		arp.addMapping("base_user_type", UserTypeModel.class);
//		arp.addMapping("base_menu", MenuModel.class);
//		
//		
		arp.addMapping("base_enterprise", BaseEnterpriseModel.class);
		arp.addMapping("base_menu", BaseMenuModel.class);
		arp.addMapping("base_message", BaseMessageModel.class);
		arp.addMapping("base_module", BaseModuleModel.class);
		arp.addMapping("base_state", BaseStateModel.class);
		arp.addMapping("base_type", BaseTypeModel.class);
		arp.addMapping("base_user", BaseUserModel.class);
		arp.addMapping("base_user_type", BaseUserTypeModel.class);
		arp.addMapping("base_order", OrderModel.class);
		arp.addMapping("ore_area", OreAreaModel.class);
		arp.addMapping("ore_develop", OreDevelopModel.class);
		arp.addMapping("ore_exploit_record", OreExploitRecordModel.class);
		arp.addMapping("staff", StaffModel.class);
		arp.addMapping("transaction_record", TransactionRecordModel.class);
		arp.addMapping("transport", TransportModel.class);

	}
	
	public void configInterceptor(Interceptors me) {
		me.add(new CrossInterceptor());
	}
	
	public void configHandler(Handlers me) {
		me.add(new ContextPathHandler("ctx"));
	}
	
	

	@Override
	public void configEngine(Engine arg0) {
		// TODO Auto-generated method stub
	}
}
