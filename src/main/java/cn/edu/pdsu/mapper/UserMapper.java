package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.pdsu.pojo.Page;
import cn.edu.pdsu.pojo.User;

public interface UserMapper {
	
	@Select("SELECT * FROM act_user WHERE id=#{id} AND password=#{password} ")
	public User getUser(User user);

	@Update("UPDATE act_user SET username=#{username},password=#{password} WHERE id=#{id} ")
	public int updateUser(User myUser);
	
	@Select("SELECT * FROM act_user WHERE id=#{userid}")
	public User getUserByUserid(User user);

	@Select("SELECT * FROM act_user LIMIT #{locationPage},#{perSize}")
	public List<User> getUserByLimit(Page page);

}
