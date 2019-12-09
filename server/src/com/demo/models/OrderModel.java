package com.demo.models;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

//genarate with database table order
//arp.addMapping("order", OrderModel.class);
public class OrderModel extends Model<OrderModel>{
	public static final OrderModel dao = new OrderModel();
	
	public Page<OrderModel> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from base_order order by create_time asc");
	}
}