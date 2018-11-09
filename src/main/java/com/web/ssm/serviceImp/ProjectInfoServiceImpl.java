package com.web.ssm.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.web.ssm.dao.mapper.ProjectInfoMapper;
import com.web.ssm.domain.ProjectInfo;
import com.web.ssm.domain.query.ProjectInfoQueryPara;
import com.web.ssm.service.ProjectInfoService;

@Service("projectService")
public class ProjectInfoServiceImpl implements ProjectInfoService {

	@Resource
	private ProjectInfoMapper projectInfoMapper;

	public List<ProjectInfo> getProjectInfo(ProjectInfoQueryPara infoQueryPara) {
		System.out.println("test==========");
		List<ProjectInfo> projectInfos = projectInfoMapper.selectProject(infoQueryPara);
		System.out.println("musicInfos=============================");
		return projectInfos;
	}

	public int getcounts(ProjectInfoQueryPara infoQueryPara) {
		int total = projectInfoMapper.selectProjectCounts(infoQueryPara);

		return total;
	}

	public List<ProjectInfo> searchProjectInfo(String search) {
		List<ProjectInfo> infos = projectInfoMapper.searchProjectInfo(search);
		return infos;
	}

	public int searchProjectInfoCount(ProjectInfoQueryPara infoQueryPara) {
		int total = projectInfoMapper.searchProjectInfoCount(infoQueryPara);
		return total;
	}

}
