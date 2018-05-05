<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="certificateType/edit" id="editForm" method="post">

	<input name = "id" type = hidden value="${certificateType.id}">
	<div class="form-group">
		<label class="col-sm-2 control-label">凭证代码</label>
		<div class="col-sm-8">
			<input name="certificateTypeCode" class="form-control" value="${certificateType.certificateTypeCode}">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">凭证名称</label>
		<div class="col-sm-8">
			<input name="certificateTypeName" class="form-control"  value="${certificateType.certificateTypeName}">
		</div>
	</div>

</form>