package com.demo.models;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

//genarate with database table staff
//arp.addMapping("staff", StaffModel.class);
public class StaffModel extends Model<StaffModel>{
	public static final StaffModel dao = new StaffModel();
	
	public Page<StaffModel> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from staff order by create_time asc");
	}
}