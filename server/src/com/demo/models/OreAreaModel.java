package com.demo.models;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

//genarate with database table ore_area
//arp.addMapping("ore_area", OreAreaModel.class);
public class OreAreaModel extends Model<OreAreaModel>{
	public static final OreAreaModel dao = new OreAreaModel();
	
	public Page<OreAreaModel> paginate(int pageNumber, int pageSize) {
		return paginate(pageNumber, pageSize, "select *", "from ore_area order by create_time asc");
	}
}