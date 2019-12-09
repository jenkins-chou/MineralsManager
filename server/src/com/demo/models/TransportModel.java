package com.demo.models;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

//genarate with database table transport
//arp.addMapping("transport", TransportModel.class);
public class TransportModel extends Model<TransportModel>{
	public static final TransportModel dao = new TransportModel();
	
	public Page<TransportModel> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from transport order by create_time asc");
	}
}