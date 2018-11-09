package com.web.ssm.domain;

import java.util.List;

public class TotalAndRows {
	private int total;
	private List<ProjectInfo> rows;

	// private List<ProjectInfo> projectInfos;
	/*
	 * public List<ProjectInfo> getProjectInfos() { return projectInfos; }
	 * 
	 * public void setProjectInfos(List<ProjectInfo> projectInfos) {
	 * this.projectInfos = projectInfos; }
	 */
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<ProjectInfo> getRows() {
		return rows;
	}

	public void setRows(List<ProjectInfo> rows) {
		this.rows = rows;
	}

}
