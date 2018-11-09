<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="incoming_resource_file.jsp"></jsp:include>
<title>项目管理</title>
</head>
<body>
	<div id="loading_layer" style="display: none"></div>
	<div id="maincontainer" class="clearfix">
		<header>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="brand" href="dashboard.htm"><i
						class="icon-home icon-white"></i> 项目管理 <span class="sml_t">1.6</span></a>
					<ul class="nav user_menu pull-right">
						<li class="hidden-phone hidden-tablet">
							<div class="nb_boxes clearfix">
								 <a data-toggle="modal"
									data-backdrop="static" href="#myTasks" class="label ttip_b"
									title="New tasks">10 <i class="splashy-calendar_week"></i></a>
							</div>
						</li>
						<li class="divider-vertical hidden-phone hidden-tablet"></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><img src="img/user_avatar.png" alt=""
								class="user_avatar" />Johny Smith <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="user_profile.htm">My Profile</a></li>
								<li><a href="javascrip:void(0)">Another action</a></li>
								<li class="divider"></li>
								<li><a href="index.htm">Log Out</a></li>
							</ul></li>
					</ul>

				</div>
			</div>
		</div>
		<div class="modal hide fade" id="myTasks">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">×</button>
				<h3>New Tasks</h3>
			</div>
			<div class="modal-body">
				<div class="alert alert-info">In this table jquery plugin
					turns a table row into a clickable link.</div>
				<table class="table table-condensed table-striped" data-rowlink="a">
					<thead>
						<tr>
							<th>id</th>
							<th>Summary</th>
							<th>Updated</th>
							<th>Priority</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>P-23</td>
							<td><a href="javascript:void(0)">Admin should not break
									if URL&hellip;</a></td>
							<td>23/05/2012</td>
							<td class="tac"><span class="label label-important">High</span></td>
							<td>Open</td>
						</tr>
						<tr>
							<td>P-18</td>
							<td><a href="javascript:void(0)">Displaying submenus in
									custom&hellip;</a></td>
							<td>22/05/2012</td>
							<td class="tac"><span class="label label-warning">Medium</span></td>
							<td>Reopen</td>
						</tr>
						<tr>
							<td>P-25</td>
							<td><a href="javascript:void(0)">Featured image on post
									types&hellip;</a></td>
							<td>22/05/2012</td>
							<td class="tac"><span class="label label-success">Low</span></td>
							<td>Updated</td>
						</tr>
						<tr>
							<td>P-10</td>
							<td><a href="javascript:void(0)">Multiple feed fixes
									and&hellip;</a></td>
							<td>17/05/2012</td>
							<td class="tac"><span class="label label-warning">Medium</span></td>
							<td>Open</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<a href="javascript:void(0)" class="btn">Go to task manager</a>
			</div>
		</div>

		</header>
		<a href="javascript:void(0)" class="sidebar_switch"
			title="Hide Sidebar">Sidebar switch</a>
		<div class="sidebar">

			<div class="antiScroll">
				<div class="antiscroll-content">
			<div id="side_accordion" class="accordion">
	
					</div>
					<div id="side_accordion" class="accordion">
						<div class="accordion-group">
							<div class="accordion-heading">
								<a href="#collapseOne" data-parent="#side_accordion"
									data-toggle="collapse" class="accordion-toggle"> <i
									class="icon-folder-close"></i> 项目管理
								</a>
							</div>
							<div class="accordion-body collapse" id="collapseOne">
								<div class="accordion-inner">
									<ul class="nav nav-list">
										<li><a href="javascript:void(0)" id="">项目创建</a></li>
										<li><a href="javascript:void(0)">项目进度查询</a></li>
										<li><a href="javascript:void(0)">项目修改</a></li>
										<li><a href="javascript:void(0)">项目删除</a></li>
									</ul>
								</div>
							</div>
						</div>


					</div>
					<div class="push"></div>
				</div>



			</div>
		</div>

	</div>
</body>
</html>