<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="left_nav">
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<%--		<div class="panel panel-default myPanel">
			<div class="panel-heading primary-menu drop-down" role="tab" id="heading0">
				<img src="resources/img/ico12.png" data-up-icon="/resources/img/ico11.png" data-down-icon="/resources/img/ico12.png" />
				<h4 class="panel-title" data-selected="true">
					<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse0" aria-expanded="false" aria-controls="collapse0">
						小说管理
					</a>
				</h4>
			</div>
			<div id="collapse0" class="panel-collapse collapse subMenu in" role="tabpanel" aria-labelledby="heading0">
				<div class="panel-body">
					<ul>
						<li class="activeStyle"><a href="/loving_cms/iface/topic/">小说列表</a></li>
					</ul>
				</div>
			</div>
		</div>--%>
		<%--<shiro:hasRole name="teacher">
		<div class="panel panel-default myPanel">
			<div class="panel-heading primary-menu close-up" role="tab" id="heading1">
				<img src="resources/img/ico01.png" data-up-icon="/resources/img/ico01.png" data-down-icon="/resources/img/ico02.png" />
				<h4 class="panel-title" data-selected="false">
					<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
						分类管理
					</a>
				</h4>
			</div>
			<div id="collapse1" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading1">
				<div class="panel-body">
					<ul>
						<li class=""><a href="/novel_basic/category">分类管理</a></li>
					</ul>
				</div>
			</div>
		</div>
		</shiro:hasRole>--%>

		<shiro:hasRole name="staff">
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading1">
					<img src="resources/img/ico01.png" data-up-icon="/resources/img/ico01.png" data-down-icon="/resources/img/ico02.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
							机构管理
						</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading1">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/rate">机构管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading2">
					<img src="resources/img/ico03.png" data-up-icon="/resources/img/ico03.png" data-down-icon="/resources/img/ico04.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
							角色管理
						</a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading2">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/rate">角色管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading3">
					<img src="resources/img/ico03.png" data-up-icon="/resources/img/ico03.png" data-down-icon="/resources/img/ico04.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
							用户管理
						</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading3">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/rate">用户管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading4">
					<img src="resources/img/ico13.png" data-up-icon="/resources/img/ico13.png" data-down-icon="/resources/img/ico14.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
							利率管理
						</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading4">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/rate">利率管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading5">
					<img src="resources/img/ico15.png" data-up-icon="/resources/img/ico15.png" data-down-icon="/resources/img/ico16.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
							币种管理
						</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading5">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/currency">币种管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading6">
					<img src="resources/img/ico09.png" data-up-icon="/resources/img/ico09.png" data-down-icon="/resources/img/ico10.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
							凭证管理
						</a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading6">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/certificateType">凭证类型管理</a></li>
							<li class=""><a href="/certificateInfo">凭证资料管理</a></li>
						</ul>
					</div>
				</div>
			</div>
		</shiro:hasRole>
		<shiro:hasRole name="audit">
			<div class="panel panel-default myPanel">
				<div class="panel-heading primary-menu close-up" role="tab" id="heading7">
					<img src="resources/img/ico19.png" data-up-icon="/resources/img/ico19.png" data-down-icon="/resources/img/ico20.png" />
					<h4 class="panel-title" data-selected="false">
						<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
							待办事项
						</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse subMenu " role="tabpanel" aria-labelledby="heading7">
					<div class="panel-body">
						<ul>
							<li class=""><a href="/certificateType">利率审核</a></li>
							<li class=""><a href="/certificateType">币种审核</a></li>
							<li class=""><a href="/certificateInfo">凭证审核</a></li>
						</ul>
					</div>
				</div>
			</div>
		</shiro:hasRole>
	</div>
	 <div class="NavToggle">
		<div class="btnToggle"></div>
	 </div>
</div><!-- end right content-->