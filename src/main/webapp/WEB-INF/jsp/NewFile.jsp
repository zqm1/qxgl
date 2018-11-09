<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
 
<link rel="stylesheet" href="bootstrap_table/test/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap_table/test/bootstrap-table.min.css" type="text/css">
<script src="bootstrap_table/test/jquery.min.js"></script>
<script src="bootstrap_table/test/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap_table/test/bootstrap-table.min.js"></script>
 <script type="text/javascript" src="bootstrap_table/test/bootstrap-table-zh-CN.min.js"></script>

<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title text-center">Bootstrap-table样例演示</h3>
		</div>
		<div class="panel-body">
 
			<div id="toolbar" class="btn-group">
			<button id="btn_edit" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
			</button>
			<button id="btn_delete" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
			</button>
		</div>
 
		<table data-toggle="table" id="table" data-height="400"
			data-classes="table table-hover" data-striped="true"
			data-pagination="true" data-side-pagination="server"
			data-search="true" data-show-refresh="true" data-show-toggle="true"
			data-show-columns="true" data-toolbar="#toolbar">
			<thead>
				<tr>
					<th data-field="state" data-checkbox='ture'></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
		</table>
	</div>
	</div>
 
 
</body>
 
<script type="text/javascript">
	$("#superBtn").click(function() {
		$.get("/project/queryProject?limit=5&offset=0", function(data, status) {
			alert(status);
			alert(data.userList[0].name);
		});
	});
	
	$(document).ready(function(){
		$("button[name='toggle']").height(20);
		$("button[name='refresh']").height(20);
	});
 
	function edit(id) {
		alert(id);
	}
 
	$("#table").bootstrapTable(
					{
						url : "/project/queryProject",    //数据请求路径
						clickToSelect : true,  //点击表格项即可选择
						dataType : "json",   //后端数据传递类型
						pageSize : 5,
						pageList : [ 5, 10, 20 ],
					//	contentType : "application/x-www-form-urlencoded",
						method : 'get',      //请求类型
						dataField : "data",  //很重要，这是后端返回的实体数据！					
						responseHandler : function(res) {
							alert('ss'+res[1].projectPiProcess);
							//在ajax获取到数据，渲染表格之前，修改数据源
							return res;
						},
						columns : [
								{
									field : 'state',
								},
								{
									field : 'id',
									title : 'ID',
									align : 'center'
								},
								{
									field : 'projectPiProcess',
									title : '姓名',
									align : 'center'
								},
								{
									field : 'projectWso2Process',
									title : '年龄',
									align : 'center'
								},
								{
									field : 'projectPiProcess',
									title : '地址',
									align : 'center'
								},
								{
									title : '操作',
									field : 'id',
									align : 'center',
									formatter : function(value, row, index) {
										var e = '<a href="#" mce_href="#" onclick="edit(\''
												+ row.id + '\')">编辑</a> ';
										var d = '<a href="#" mce_href="#" onclick="del(\''
												+ row.id + '\')">删除</a> ';
										return e + d;
									}
 
								} ]
					});
</script>
</html>
