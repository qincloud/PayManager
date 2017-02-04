<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
</head>
<body>
	<div class="container">
		<form action="" class="form-horizontal" role="form">
			<fieldset>
				<legend>Test</legend>
				<div class="form-group">
					<label for="dtp_input1" class="col-md-2 control-label">DateTime
						Picking</label>
					<div class="input-group date form_datetime col-md-5"
						data-date="1979-09-16T05:25:07Z"
						data-date-format="dd MM yyyy - HH:ii p"
						data-link-field="dtp_input1">
						<input id="date" class="form-control" size="16" type="text" value=""
							readonly> <span class="input-group-addon"><span
							class="glyphicon glyphicon-remove"></span></span> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-th"></span></span>
					</div>
					<input type="hidden" id="dtp_input1" value="" /><br />
				</div>
				<div class="form-group">
					<label for="dtp_input2" class="col-md-2 control-label">Date
						Picking</label>
					<div class="input-group date form_date col-md-5" data-date=""
						data-date-format="dd MM yyyy" data-link-field="dtp_input2"
						data-link-format="yyyy-mm-dd">
						<input class="form-control" size="16" type="text" value=""
							readonly> <span class="input-group-addon"><span
							class="glyphicon glyphicon-remove"></span></span> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-calendar"></span></span>
					</div>
					<input type="hidden" id="dtp_input2" value="" /><br />
				</div>
				<div class="form-group">
					<label for="dtp_input3" class="col-md-2 control-label">Time
						Picking</label>
					<div class="input-group date form_time col-md-5" data-date=""
						data-date-format="hh:ii" data-link-field="dtp_input3"
						data-link-format="hh:ii">
						<input class="form-control" size="16" type="text" value=""
							readonly> <span class="input-group-addon"><span
							class="glyphicon glyphicon-remove"></span></span> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-time"></span></span>
					</div>
					<input type="hidden" id="dtp_input3" value="" /><br />
				</div>
				<buuton id="ensure" class="btn btn-info">确定</buuton>
			</fieldset>
		</form>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script type="text/javascript">
		/*	
		$(".form_datetime").datetimepicker({
			language : 'zh-CN',
			format : 'yyyy-mm-dd hh:ii'
		});*/
		$('#ensure').click(function(){
			alert($('#date').val());
		});
		$('.form_datetime').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_date').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		$('.form_time').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>
</body>
</html>