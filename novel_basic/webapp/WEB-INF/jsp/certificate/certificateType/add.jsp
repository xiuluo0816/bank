<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="certificateType/add" id="addForm" method="post">

	<div class="form-group">
		<label class="col-sm-2 control-label">凭证代码<span style="color:red">*</span></label>
		<div class="col-sm-8">
			<input name="code" class="form-control" value="${certificateType.code}">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">凭证名称<span style="color:red">*</span></label>
		<div class="col-sm-8">
			<input name="name" class="form-control" value="${certificateType.name}">
		</div>
	</div>

</form>