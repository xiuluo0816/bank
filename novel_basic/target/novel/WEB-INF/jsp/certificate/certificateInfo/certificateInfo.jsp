<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<title>凭证资料管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="libs/th2w.core.js" type="text/javascript"></script>
	<script src="libs/jquery/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
	 	Core.init ({
			url : 'resources',
			css	: ['bootstrap/css/bootstrap.min', 'dialog/css/ui-dialog', './css/layout'],
			js  : ['bootstrap/js/bootstrap.min', 'dialog/js/dialog-plus-min', 'jquery/form', './js/common', './js/buttons',
				'./js/certificateInfo/buttons']
		});
	</script>
</head>
<script type="text/javascript">Core.js('./js/iface/topic');</script>
<body>
	<div class="header none-margin">
		<div class="header-right">
			<div class="logo"></div>
			<div class="usrDiv"></div>
			<div class="manager">
	                <%--<div>
	                    <ul class="nav nav-tabs" role="tablist">
		                    <li role="presentation" class=""><a href="/loving_cms/home/">小说列表</a></li>
	                    </ul>
					</div>--%>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row main_content">
			<%@ include file="../../leftmenu.jsp" %>
		<!-- right content -->
		<div class="right-content">
			<form id="searchForm" action="" method="post">
			<input type="hidden" name="_method" value="get" />
			<div class="lujing">
               <span class="zhucaidan">凭证管理</span>
               <span class="jiantou">&lt;&lt;</span>
               <span class="zicaidan">凭证资料管理</span>
			</div>
		 	<div class="handleBtn">
				<button type="button" id="add" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> 添加</button>
				<button type="button" id="addBatch" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> 批量添加</button>
				<%--<button type="button" id="edit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> 编辑</button>--%>
				<button type="button" id="delete" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> 删除</button>
           </div>
           <!--table-->
           <!--固定表头,绝对定位-->
           <div class="fixedThead">
               <table class="table table-bordered myTable">
                   <thead>
                   <tr class="fixedTr">
                       <th class="w65"><input id="xuanxiang" name="markedAll" type="checkbox"/> <label for="xuanxiang">选项</label> </th>
					   <th>机构名称</th>
					   <th>机构号</th>
					   <th>领用人</th>
					   <th>领用日期</th>
					   <th>凭证种类</th>
					   <th>印刷编号</th>
					   <th>业务编号</th>
					   <th>凭证标志</th>
					   <th>凭证状态</th>
                   </tr>
                   </thead>
               </table>
           </div>
           <div class="tableDiv">
			<table class="table table-bordered table-striped table-hover myTable">
				<thead>
					<tr class="originalTr">
						<th class="w65"><input  type="checkbox"/> <label for="xuanxiang">选项</label> </th>
						<th>机构名称</th>
						<th>机构号</th>
						<th>领用人</th>
						<th>领用日期</th>
						<th>凭证种类</th>
						<th>印刷编号</th>
						<th>业务编号</th>
						<th>凭证标志</th>
						<th>凭证状态</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="certificateInfo" items="${certificateInfos}">
						<tr>
							<td><input name="marked" type="checkbox" value="${certificateInfo.id}" /></td>
							<td>${user.organizationName}</td>
							<td>${user.organizationCode}</td>
							<c:forEach var="user" items="${users}">
								<c:if test="${certificateInfo.userId eq user.id}">
									<td>${user.username}</td>
								</c:if>
							</c:forEach>
							<td><fmt:formatDate value="${certificateInfo.useDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<c:forEach var="certificateType" items="${certificateTypes}">
								<c:if test="${certificateType.id eq certificateInfo.certificateTypeId}">
								<td>${certificateType.name}</td>
								</c:if>
							</c:forEach>
							<td>${certificateInfo.printNum}</td>
							<td>${certificateInfo.businessNum}</td>
							<td>
								<c:if test="${certificateInfo.mark eq 0}">领入</c:if>
								<c:if test="${certificateInfo.mark eq 1}">使用</c:if>
								<c:if test="${certificateInfo.mark eq 2}">换折</c:if>
								<c:if test="${certificateInfo.mark eq 3}">作废</c:if>
								<c:if test="${certificateInfo.mark eq 4}">丢失</c:if>
								<c:if test="${certificateInfo.mark eq 4}">上缴</c:if>
							</td>
							<td>
								<c:if test="${certificateInfo.status eq 0}">经办</c:if>
								<c:if test="${certificateInfo.status eq 1}">待复核</c:if>
								<c:if test="${certificateInfo.status eq 2}">待审批</c:if>
								<c:if test="${certificateInfo.status eq 3}">审批完成</c:if>
							</td>
						</tr>
					</c:forEach>
               </tbody>
           </table>
           </div>
           <!--end table-->
          </form>
       		</div> <!-- end right content -->
		</div>
	</div>	
 
	<!--弹出框-->
	<div class="modal fade" id="modal" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title"></h4>
	            </div>
	            <div class="modal-body form-horizontal">
					
	            </div>
	            <div class="modal-footer">
	                <span class="result">操作成功</span>
	                <button type="button" class="btn btn-default cancle" data-dismiss="modal">取消</button>
	                <button type="button" class="btn btn-primary sure">确定</button>
	            </div>
	        </div>
	    </div>
	</div>
	<div class="loading">正在加载中...</div>
</body>
</html>