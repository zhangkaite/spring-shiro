<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#addForm').form({
			url : '${path }/unSecPrintInfoManage/add',
			onSubmit : function() {
				progressLoad();
				var isValid = $(this).form('validate');
				if (!isValid) {
					progressClose();
				}
				return isValid;
			},
			success : function(result) {
				progressClose();
				result = $.parseJSON(result);
				if (result.success) {
					parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
					parent.$.modalDialog.handler.dialog('close');
				} else {
					parent.$.messager.alert('提示', result.msg, 'warning');
				}
			}
		});

	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden; padding: 3px;">
		<form id="addForm" method="post">
			<table class="grid">
				<tr>
					<td>序号</td>
					<td><input name="sequenceno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>房间</td>
					<td><input name="roomno" type="text" placeholder="请输入房间" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>信息设备编号</td>
					<td><input name="informdevno" type="text" placeholder="请输入信息设备编号" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>新资产号</td>
					<td><input name="newassetnum" type="text" placeholder="请输入新资产号" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>部门</td>
					<td><input name="resdepart" type="text" placeholder="请输入部门" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>责任人</td>
					<td><input name="resperson" type="text" placeholder="请输入责任人" class=" easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>品牌</td>
					<td><input name="brand" type="text" placeholder="请输入品牌" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>规格</td>
					<td><input name="specifications" type="text" placeholder="请输入规格" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>序列号</td>
					<td><input name="serialno" type="text" placeholder="请输入序列号" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>使用日期</td>
					<td><input name="usedate" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>设备密级</td>
					<td><input name="devseclevel" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>使用方式</td>
					<td><input name="usemethod" type="text" placeholder="请输入使用方式" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>状态</td>
					<td><input name="status" type="text" placeholder="请输入状态" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>所在房间</td>
					<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>接入信息点</td>
					<td><input name="accesspoint" type="text" placeholder="请输入接入信息点" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>mac地址</td>
					<td><input name="mac" type="text" placeholder="请输入mac地址" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>刷卡器信息点</td>
					<td><input name="paycardinfo" type="text" placeholder="请输入刷卡器信息点" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>刷卡服务器IP</td>
					<td><input name="payhostip" type="text" placeholder="请输入刷卡服务器IP" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>刷卡服务器MAC地址</td>
					<td><input name="paymac" type="text" placeholder="请输入刷卡服务器MAC地址" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


			</table>
		</form>
	</div>
</div>