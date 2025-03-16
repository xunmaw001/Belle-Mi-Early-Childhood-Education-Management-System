<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 用户注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">手机账号：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shoujizhanghao" name="shoujizhanghao" placeholder="请输入手机账号" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item">
					<label class="layui-form-label">密码：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">家长姓名：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="jiazhangxingming" name="jiazhangxingming" placeholder="请输入家长姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">年龄：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="nianling" name="nianling" placeholder="请输入年龄" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">身份证号码：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shenfenzhenghaoma" name="shenfenzhenghaoma" placeholder="请输入身份证号码" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    					                    if(!data.shoujizhanghao){
                        layer.msg('手机账号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                    if(!data.mima){
                        layer.msg('密码不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                    if(!data.jiazhangxingming){
                        layer.msg('家长姓名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                                                					                                                                                                                                            					                                        if(!isIntNumer(data.nianling)){
                        layer.msg('年龄应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                        if(!isIdentity(data.shenfenzhenghaoma)){
                        layer.msg('身份证号码应输入身份证格式', {
							time: 2000,
							icon: 5
						});
                        return 
                    }
                                                            					                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
