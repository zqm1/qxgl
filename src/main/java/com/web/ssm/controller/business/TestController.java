package com.web.ssm.controller.business;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.web.ssm.domain.ProjectInfo;
import com.web.ssm.domain.TotalAndRows;
import com.web.ssm.domain.query.ProjectInfoQueryPara;
import com.web.ssm.service.ProjectInfoService;

@Controller
public class TestController {
	/*
	 * @Resource private MusicInfoService musicService;
	 */
	@Resource
	private ProjectInfoService projectService;

	@RequestMapping(value = "business/project_manage/create_project")
	public String getmenu() {
		return "business/project_manage/create_project";
	}

	/*
	 * @RequestMapping("/music")
	 * 
	 * @ResponseBody public List<MusicInfo> getMusicInfo(MusicInfo musicInfo) {
	 * musicInfo.setId(1); System.out.println("-------------------------");
	 * List<MusicInfo> musicInfoList = musicService.getMusicInfo(musicInfo); return
	 * musicInfoList; }
	 */

	@RequestMapping(value = "test")
	public String getprojectjsp() {
		return "index2";
	}

	@RequestMapping("/project/queryProject")
	@ResponseBody
	public TotalAndRows queryProject(int pageSize, int pageNumber, String projectname, String projectid,
			String search) {
		System.out
				.println(pageNumber + "===offset-------------------------limit===" + pageSize + "--------projectname==="
						+ projectname + "------projectid===" + projectid + "------search===" + search);
		if (search != null && search.length() >= 0) {
			List<ProjectInfo> infos = projectService.searchProjectInfo(search);
			ProjectInfoQueryPara infoQueryPara = new ProjectInfoQueryPara();
			infoQueryPara.setLimit(pageSize);
			infoQueryPara.setOffset(pageNumber);
			infoQueryPara.setProjectId(projectid);
			infoQueryPara.setProjectName(search);
			int total = projectService.searchProjectInfoCount(infoQueryPara);
			TotalAndRows andRows = new TotalAndRows();
			andRows.setRows(infos);
			andRows.setTotal(total);
			return andRows;
		}
		ProjectInfoQueryPara infoQueryPara = new ProjectInfoQueryPara();
		infoQueryPara.setLimit(pageSize);
		infoQueryPara.setOffset(pageNumber);
		infoQueryPara.setProjectId(projectid);
		infoQueryPara.setProjectName(projectname);
		List<ProjectInfo> projectInfoList = projectService.getProjectInfo(infoQueryPara);
		TotalAndRows totalAndRows = new TotalAndRows();
		totalAndRows.setRows(projectInfoList);
		int all = projectService.getcounts(infoQueryPara);
		totalAndRows.setTotal(all);
		System.out.println(projectInfoList.size() + "projectInfoList的size=======" + JSON.toJSONString(totalAndRows));
		return totalAndRows;
	}

}
