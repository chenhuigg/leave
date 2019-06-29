package cn.edu.pdsu.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.edu.pdsu.pojo.Premission;

public interface PremissionMapper {

	@Select("SELECT * FROM act_premission")
	List<Premission> getAllPremission();

	@Select("SELECT * FROM act_premission p " + 
			"INNER JOIN act_r_p r_p " + 
			"ON p.id=r_p.premissionid " + 
			"WHERE r_p.roleid=#{id}")
	List<Premission> getPremissionById(String id);

	int addPremissions(Map<String, Object> map);

	int delPremissions(Map<String, Object> map);

}
