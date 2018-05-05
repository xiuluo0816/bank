$(document).ready(function() {

	$("#addBatch").click(function() {
		_toAdd('#searchForm');
    });

	var _toAdd = function (_form) {
		$(".result").hide();
        $(".sure").removeAttr("id").attr("id","add_sure");
        $('.modal-title').text("添加");
		$(_form + " input[name=_method]").attr("disabled", "disabled");
		$(_form + " input[name=marked]").attr("disabled", "disabled"); 
		$.ajax({
			type: 'put',
			url: 'certificateInfo/addBatch?' + $(_form).serialize(),
			async: true,
			success: function(data) {
				$(_form + " input[name=_method]").removeAttr("disabled");
				$(_form + " input[name=marked]").removeAttr("disabled");
				$('.modal-body').html(data);
				$('#modal').modal({
					backdrop: 'static'
				});
				_add('#add_sure');
			},
			error: function () {
				$(_form + "input[name=_method]").removeAttr("disabled");
				$(_form + " input[name=marked]").removeAttr("disabled");
				$('.modal-body').html("请求超时！");
				$('#modal').modal({
					backdrop: 'static'
				});
				$(document).on('click', '#edit_sure', function() {
		        	$('#modal').modal('hide');
		        });
			}
		});
	}; 

	var _add = function (_tag) {
		var _this = $(_tag);
		var _loading = $(".loading");
		var _result = $(".result");
		$(document).on('click', _tag, function() {
			_this.attr('disabled', 'disabled');
			_loading.stop().fadeIn();
			$("#addForm").ajaxSubmit({
				async: true,
				dataType: 'json',
				success: function(data) {
					if(data == true) {
						_loading.css('display', 'none');
						_result.html("添加成功").css("margin-left", -_result.width()/2);
						_result.fadeIn();
						_this.removeAttr('disabled');
                        location.reload();
					} else {
						_loading.css('display', 'none');
						_result.html("添加失败").css("margin-left",-_result.width()/2);
						_result.fadeIn();
						_this.removeAttr('disabled');
					}
				}
			});
		});
	};

});