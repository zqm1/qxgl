package com.web.ssm.dao.mapper.provider;

import org.apache.ibatis.jdbc.SQL;

import com.mysql.jdbc.StringUtils;
import com.web.ssm.domain.query.ProjectInfoQueryPara;

public class ProjectInfoProvider {
	private final String TABLE = "project_info";

	public String queryOrderByParam(ProjectInfoQueryPara param) {
		SQL sql = new SQL().SELECT("*").FROM(TABLE);
		String projectId = param.getProjectId();
		String projectName = param.getProjectName();
		if (!StringUtils.isNullOrEmpty(projectId)) {
			sql.WHERE("project_id LIKE #{projectId}");
		}
		if (!StringUtils.isNullOrEmpty(projectName)) {
			sql.WHERE("project_name LIKE #{projectName}");
		}
		String query = sql.toString();
		StringBuffer ss = new StringBuffer(query);
		int offset = param.getOffset();
		ss.append(" limit " + offset + "," + param.getLimit());
		return ss.toString();
	}

}
