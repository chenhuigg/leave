package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.pdsu.pojo.Page;
import cn.edu.pdsu.pojo.User;

public interface UserMapper {
	
	@Select("SELECT * FROM act_user WHERE id=#{id} AND password=#{password} ")
	public User getUser(User user);

	@Update("UPDATE act_user SET username=#{username},password=#{password},roleid=#{roleid},userid=#{userid} WHERE id=#{id} ")
	public int updateUser(User myUser);
	
	@Select("SELECT * FROM act_user WHERE id=#{userid}")
	public User getUserByUserid(User user);

	//@Select("SELECT *,r.rolename FROM act_user INNER JOIN act_role r LIMIT #{locationPage},#{perSize}")
	public List<User> getUserByLimit(Page page);

	@Insert("INSERT INTO act_user(id,username,password,roleid,userid,time) "
			+ "VALUES(#{id},#{username},#{password},#{roleid},#{userid},#{time})")
	public int addUser(User user);

	@Delete("DELETE FROM act_user WHERE id=#{id}")
	public int delUserById(String id);

	public int delUsers(String [] ids);
	
}
