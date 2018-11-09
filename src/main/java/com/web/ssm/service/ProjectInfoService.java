package com.web.ssm.service;

import java.util.List;

import com.web.ssm.domain.ProjectInfo;
import com.web.ssm.domain.query.ProjectInfoQueryPara;

public interface ProjectInfoService {
	public List<ProjectInfo> getProjectInfo(ProjectInfoQueryPara infoQueryPara);

	public int getcounts(ProjectInfoQueryPara infoQueryPara);

	public List<ProjectInfo> searchProjectInfo(String search);

	public int searchProjectInfoCount(ProjectInfoQueryPara infoQueryPara);
}
