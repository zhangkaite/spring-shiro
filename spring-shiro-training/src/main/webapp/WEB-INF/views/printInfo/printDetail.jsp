<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<style>
<!--
input {
	display: block;
	padding: 6px 12px;
	width: 120px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	float: left;
	font-size: 14px;
}

/* td {
	width: 160px;
} */
-->
</style>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="editForm" method="post">

			<table class="grid">

				<tr>
					<td>房间</td>
					<td><input name="id" type="hidden" value="${PrintInfo.id}" /><input name="room" type="text" placeholder="请输入房间"
						class="easyui-validatebox" data-options="required:true" value="${PrintInfo.room}"></td>
					<td>设备编号</td>
					<td><input name="devno" type="text" placeholder="请输入设备编号" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.devno}"></td>
				</tr>

				<tr>
					<td>资产号</td>
					<td><input name="assertsno" type="text" placeholder="资产号" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.assertsno}"></td>
					<td>责任部门</td>
					<td><input name="respondepart" type="text" placeholder="责任部门" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.respondepart}"></td>
				</tr>

				<tr>
					<td>负责人</td>
					<td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.resperson}"></td>
					<td>品牌</td>
					<td><input name="brand" type="text" placeholder="请输入品牌" class=" easyui-validatebox" data-options="required:true"
						value="${PrintInfo.brand}"></td>
				</tr>


				<tr>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.model}"></td>
					<td>规格</td>
					<td><input name="specifications" type="text" placeholder="请输入规格" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.specifications}"></td>
				</tr>


				<tr>
					<td>序列号</td>
					<td><input name="serialno" type="text" placeholder="请输入序列号" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.serialno}"></td>
					<td>内码</td>
					<td><input name="code" type="text" placeholder="请输入内码" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.code}"></td>
				</tr>


				<tr>
					<td>使用日期</td>
					<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						readonly="readonly" class="easyui-validatebox" data-options="required:true" value="${PrintInfo.usedate}"></td>
					<td>设备密级</td>
					<td><input name="devseclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.devseclevel}"></td>
				</tr>

				<tr>
					<td>使用方式</td>
					<td><input name="usemethod" type="text" placeholder="请输入使用方式" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.usemethod}"></td>
					<td>状态</td>
					<td><input name="status" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.infostatus}"></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true"
						value="${PrintInfo.remark}"></td>
					<td></td>
					<td></td>
				</tr>

			</table>
		</form>
	</div>
</div>