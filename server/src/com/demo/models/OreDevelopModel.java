package com.demo.models;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

//genarate with database table ore_develop
//arp.addMapping("ore_develop", OreDevelopModel.class);
public class OreDevelopModel extends Model<OreDevelopModel>{
	public static final OreDevelopModel dao = new OreDevelopModel();
	
	public Page<OreDevelopModel> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from ore_develop order by create_time asc");
	}
}