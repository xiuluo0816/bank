<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="currency/edit" id="editForm" method="post">

	<input name = "id" type = hidden value="${currency.id}">
	<div class="form-group">
		<label class="col-sm-2 control-label">机构名称</label>
		<div class="col-sm-8">
			<input name="currencyCode" class="form-control" value="${currency.currencyCode}">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">机构号</label>
		<div class="col-sm-8">
			<input name="currencyName" class="form-control"  value="${currency.currencyName}">
		</div>
	</div>

</form>