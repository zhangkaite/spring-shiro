<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#addForm').form({
			url : '${path }/convertInfoManage/add',
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
					<td><input name="serialno" type="text" placeholder="请输入序号" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>计算机编号</td>
					<td><input name="computerno" type="text" placeholder="请输入新信息设备准用证编号" class="easyui-validatebox" data-options="required:true"
						value=""></td>
				</tr>

				<tr>
					<td>新资产编号</td>
					<td><input name="assetnumber" type="text" placeholder="请输入统一信息设备准用证编号" class="easyui-validatebox" data-options="required:true"
						value=""></td>
					<td>使用部门</td>
					<td><input name="usedepartment" type="text" placeholder="请输入责任部门" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>负责人</td>
					<td><input name="resperson" type="text" placeholder="请输入负责人" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>型号</td>
					<td><input name="model" type="text" placeholder="请输入型号" class=" easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>配置</td>
					<td><input name="configure" type="text" placeholder="请输入配置" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>显示器型号</td>
					<td><input name="displaymodel" type="text" placeholder="请输入设备序列号" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>主机序列号</td>
					<td><input name="hostnumber" type="text" placeholder="请输入硬盘ID" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>硬盘ID</td>
					<td><input name="diskid" type="text" placeholder="请输入系统版本" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>


				<tr>
					<td>使用日期</td>
					<td><input name="usedate" type="text" placeholder="请输入使用日期" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						readonly="readonly" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>用途</td>
					<td><input name="purpose" type="text" placeholder="请输入设备密级" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>

				<tr>
					<td>设备密级</td>
					<td><input name="secequipment" type="text" placeholder="MAC地址" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>Mac地址</td>
					<td><input name="mac" type="text" placeholder="请输入IP地址" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>UAB key编号</td>
					<td><input name="uabnumber" type="text" placeholder="请输入所在房间" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>系统版本及安装时间</td>
					<td><input name="osinstall" type="text" placeholder="请输入使用状态" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<td>房间号</td>
					<td><input name="roomid" type="text" placeholder="请输入主要用途" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td>状态</td>
					<td><input name="status" type="text" placeholder="请输入接入信息点" class="easyui-validatebox" data-options="required:true" value=""></td>
				</tr>
				<tr>

					<td>备注</td>
					<td><input name="remark" type="text" placeholder="请输入备注" class="easyui-validatebox" data-options="required:true" value=""></td>
					<td></td>
					<td></td>
				</tr>


			</table>
		</form>
	</div>
</div>