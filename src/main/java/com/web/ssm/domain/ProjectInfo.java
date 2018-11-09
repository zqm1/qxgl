package com.web.ssm.domain;

import java.sql.Timestamp;

public class ProjectInfo {
	private Long id;
	private String projectId;
	private String projectName;
	private Timestamp projectStartDevelopTime;
	private Timestamp projectEndDevelopTime;
	private Timestamp projectStartSitTime;
	private Timestamp projectEndSitTime;
	private Timestamp projectStartUatTime;
	private Timestamp projectEndUatTime;
	private Timestamp projectStartProductTime;
	private Timestamp projectEndProductTime;
	private String projectDesprication;
	private String projectFile;
	private String projectPiProcess;
	private String projectWso2Process;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public Timestamp getProjectStartDevelopTime() {
		return projectStartDevelopTime;
	}

	public void setProjectStartDevelopTime(Timestamp projectStartDevelopTime) {
		this.projectStartDevelopTime = projectStartDevelopTime;
	}

	public Timestamp getProjectEndDevelopTime() {
		return projectEndDevelopTime;
	}

	public void setProjectEndDevelopTime(Timestamp projectEndDevelopTime) {
		this.projectEndDevelopTime = projectEndDevelopTime;
	}

	public Timestamp getProjectStartSitTime() {
		return projectStartSitTime;
	}

	public void setProjectStartSitTime(Timestamp projectStartSitTime) {
		this.projectStartSitTime = projectStartSitTime;
	}

	public Timestamp getProjectEndSitTime() {
		return projectEndSitTime;
	}

	public void setProjectEndSitTime(Timestamp projectEndSitTime) {
		this.projectEndSitTime = projectEndSitTime;
	}

	public Timestamp getProjectStartUatTime() {
		return projectStartUatTime;
	}

	public void setProjectStartUatTime(Timestamp projectStartUatTime) {
		this.projectStartUatTime = projectStartUatTime;
	}

	public Timestamp getProjectEndUatTime() {
		return projectEndUatTime;
	}

	public void setProjectEndUatTime(Timestamp projectEndUatTime) {
		this.projectEndUatTime = projectEndUatTime;
	}

	public Timestamp getProjectStartProductTime() {
		return projectStartProductTime;
	}

	public void setProjectStartProductTime(Timestamp projectStartProductTime) {
		this.projectStartProductTime = projectStartProductTime;
	}

	public Timestamp getProjectEndProductTime() {
		return projectEndProductTime;
	}

	public void setProjectEndProductTime(Timestamp projectEndProductTime) {
		this.projectEndProductTime = projectEndProductTime;
	}

	public String getProjectDesprication() {
		return projectDesprication;
	}

	public void setProjectDesprication(String projectDesprication) {
		this.projectDesprication = projectDesprication;
	}

	public String getProjectFile() {
		return projectFile;
	}

	public void setProjectFile(String projectFile) {
		this.projectFile = projectFile;
	}

	public String getProjectPiProcess() {
		return projectPiProcess;
	}

	public void setProjectPiProcess(String projectPiProcess) {
		this.projectPiProcess = projectPiProcess;
	}

	public String getProjectWso2Process() {
		return projectWso2Process;
	}

	public void setProjectWso2Process(String projectWso2Process) {
		this.projectWso2Process = projectWso2Process;
	}

}
