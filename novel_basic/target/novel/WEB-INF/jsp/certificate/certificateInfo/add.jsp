<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<form action="certificateInfo/add" id="addForm" method="post">

	<div class="form-group">
		<label class="col-sm-2 control-label">机构名称</label>
		<div class="col-sm-8">
			<input name="organizationName" class="form-control" value="${user.organizationName}" readonly = "true">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">机构号</label>
		<div class="col-sm-8">
			<input name="organizationCode" class="form-control" value="${user.organizationCode}" readonly = "true">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">领用日期</label>
		<div class="col-sm-8">
			<input name="organizationCode" class="form-control" value="<fmt:formatDate value="${useDate}" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly = "true">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">凭证种类</label>
		<div class="col-sm-8">
			<select class="form-control" name="certificateTypeId">
				<c:forEach var="certificateType" items="${certificateTypes}">
					<option value="${certificateType.id}">${certificateType.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">印刷编号</label>
		<div class="col-sm-8">
			<input name="printNum" class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">领用人员</label>
		<div class="col-sm-8">
			<select class="form-control" name="userId">
				<c:forEach var="userAll" items="${users}">
					<option value="${userAll.id}">${userAll.username}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">使用业务编号</label>
		<div class="col-sm-8">
			<input name="businessNum" class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">凭证标志</label>
		<div class="col-sm-8">
			<select class="form-control" name="mark">
				<option value="0">领入</option>
				<option value="1">使用</option>
				<option value="2">换折</option>
				<option value="3">作废</option>
				<option value="4">丢失</option>
				<option value="5">上缴</option>
			</select>
		</div>
	</div>
</form>