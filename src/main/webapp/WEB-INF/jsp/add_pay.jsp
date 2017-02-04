<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人财务管理系统</title>
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="${ctx}/css/datepicker3.css" rel="stylesheet">
<link href="${ctx}/css/styles.css" rel="stylesheet">
<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script type="text/javascript" src="${ctx}/js/jquery-1.11.1.min.js"></script>
</head>
<body>
	<%@include file="common.jsp"%>

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">支出添加</li>
			</ol>
		</div>
		<!--/.row-->
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-envelope"></span> 支出添加表单
			</div>
			<div class="panel-body">
				<form id="pay" class="form-horizontal" onsubmit="return false;"
					method="post">
					<fieldset>

						<div class="form-group">
							<label class="col-md-3 control-label" for="name">商品名字</label>
							<div class="col-md-9">
								<input id="name" name="name" type="text" placeholder="购买商品名字"
									class="form-control">
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-3 control-label" for="email">单价</label>
							<div class="col-md-9">
								<input id="sprice" name="sprice" type="text" placeholder="商品单价"
									class="form-control"
									onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
									onblur="this.v();">
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-3 control-label" for="message">购买原因</label>
							<div class="col-md-9">
								<input id="cause" name="cause" type="text" placeholder="为什么购买"
									class="form-control">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" for="message">数量或质量</label>
							<div class="col-md-9">
								<input class="form-control" id="quality" name="quality"
									placeholder="如:小面（1两,2两,3两） 小吃（1包,2包,3包）">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" for="message">总价</label>
							<div class="col-md-9">
								<input id="sumprice" name="sumprice" type="text"
									placeholder="总共花了多少钱" class="form-control"
									onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
									onblur="this.v();">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" for="message">时间</label>
							<div class="col-md-9">
								<input class="form-control form_datetime" id="date" name="date"
									type="text" value="" readonly /> <span class="add-on"><i
									class="icon-th"></i></span>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" for="message">描述</label>
							<div class="col-md-9">
								<textarea class="form-control" id="description"
									name="description" placeholder="描述" rows="5"></textarea>
							</div>
						</div>

						<!-- Form actions -->
						<div class="form-group">
							<div class="col-md-12 widget-right">
								<button id="save" class="btn btn-success btn-md pull-right">保存</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<%@include file="Dialog.jsp"%>
	<script type="text/javascript" src="${ctx}/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="${ctx}/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	<script type="text/javascript">
		$(".form_datetime").datetimepicker({
			language : 'zh-CN',
			autoclose : true,
			format : 'yyyy-mm-dd hh:ii'
		});
		$("#error_dialog").dialog({
			autoOpen : false,
			show : {

				duration : 1000
			},
			hide : {

				duration : 1000
			}
		});
		$("#ok_dialog").dialog({
			autoOpen : false,
			show : {

				duration : 1000
			},
			hide : {

				duration : 1000
			}
		});
		$("#save").click(
				function() {
					if ($('#name').val() == '' || $('#sprice').val() == ''
							|| $('#cause').val() == ''
							|| $('#quality').val() == ''
							|| $('#sumprice').val() == ''
							|| $('#date').val() == ''
							|| $('#description').val() == '') {
						$("#error_dialog").dialog("open");
						return false
					}
					$.get("${ctx}/save_pay.action", $("#pay").serialize(),
							function(data) {
								if (data.status == 200) {
									$("#pay")[0].reset()
									$("#ok_dialog").dialog("open");
									return false;
								} else {
									alert(data.msg)
								}
							});
				});
	</script>
</body>
</html>