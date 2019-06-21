package cn.edu.pdsu.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.pdsu.pojo.Table;
import cn.edu.pdsu.pojo.User;

public interface TableMapper {

	@Select("SELECT * FROM act_table WHERE userid=#{id} ORDER BY time DESC")
	List<Table> selectAll(User user);
	
	List<Table> selectAllByApproveid(User user);

	@Insert("INSERT INTO act_table VALUES(UUID(),#{user.id},#{table.from_time},#{table.to_time},#{table.cause},0,#{teacher.id},#{time})")
	int insertTable(Map<String, Object> map);

	@Delete("DELETE from act_table WHERE id=#{id}")
	int deleteTable(String id);

	@Update("UPDATE act_table SET state=#{state} WHERE id=#{id} AND approveid=#{approveid}")
	int updateState(Map<String, Object> map);
}
