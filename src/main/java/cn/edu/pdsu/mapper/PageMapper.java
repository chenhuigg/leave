package cn.edu.pdsu.mapper;

import org.apache.ibatis.annotations.Select;

public interface PageMapper {

	@Select("SELECT count(*) FROM act_user")
	int getCount();
	

}
