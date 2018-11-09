package com.web.ssm.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.SelectProvider;

import com.web.ssm.dao.mapper.provider.ProjectInfoProvider;
import com.web.ssm.domain.ProjectInfo;
import com.web.ssm.domain.query.ProjectInfoQueryPara;

public interface ProjectInfoMapper {
	@ResultMap("ProjectResultMap")
	@SelectProvider(type = ProjectInfoProvider.class, method = "queryOrderByParam")
	List<ProjectInfo> selectProject(ProjectInfoQueryPara infoQueryPara);

	/**
	 * 查询总数
	 * 
	 * @param infoQueryPara
	 * @return
	 */
	int selectProjectCounts(ProjectInfoQueryPara infoQueryPara);

	/**
	 * 查询search条件的数据
	 * 
	 * @param search
	 * @return
	 */
	List<ProjectInfo> searchProjectInfo(@Param("search") String search);

	/**
	 * 查询search条件的总数
	 * 
	 * @param infoQueryPara
	 * @return
	 */
	int searchProjectInfoCount(ProjectInfoQueryPara infoQueryPara);
}
