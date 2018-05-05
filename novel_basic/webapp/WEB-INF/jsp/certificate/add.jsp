<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="currency/add" id="addForm" method="post">

	<div class="form-group">
		<label class="col-sm-2 control-label">币别代码<span style="color:red">*</span></label>
		<div class="col-sm-8">
			<input name="currencyCode" class="form-control" value="${currency.currencyCode}">
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-2 control-label">币别名称<span style="color:red">*</span></label>
		<div class="col-sm-8">
			<input name="currencyName" class="form-control" value="${currency.currencyName}">
		</div>
	</div>

</form>

<script>
	$(function () {
		$('#add_sure').bootstrapValidator({
			message: 'This value is not valid',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				currencyCode: {
					message: '币别代码验证失败',
					validators: {
						notEmpty: {
							message: '币别代码不能为空'
						}
					}
				},
				currencyName: {
					validators: {
						notEmpty: {
							message: '币别名称不能为空'
						}
					}
				}
			}
		});
	});
</script>
