package cn.edu.pdsu.mapper;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.pdsu.pojo.User;

public interface UserMapper {
	
	@Select("SELECT * FROM act_user WHERE id=#{id} AND password=#{password} ")
	public User getUser(User user);

	@Update("UPDATE act_user SET username=#{username},password=#{password} WHERE id=#{id} ")
	public int updateUser(User myUser);
	
	@Select("SELECT * FROM act_user WHERE id=#{userid}")
	public User getUserByUserid(User user);

}
