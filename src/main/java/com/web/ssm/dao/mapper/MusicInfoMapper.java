package com.web.ssm.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.web.ssm.domain.MusicInfo;

public interface MusicInfoMapper {
	 @ResultMap("BaseResultMap")
	    @Select("select * from music_info")
	    List<MusicInfo> selectAll(MusicInfo musicInfo);
}
