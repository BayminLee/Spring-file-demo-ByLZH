<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title>用户表单</title>
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/tdh/form/css/form.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/tdh/btn/css/btn.css" />

        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/lib/jquery.min.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/tdh/form/js/tdh.form.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/tdh/btn/js/tdh.btn.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/DatePicker/WdatePicker.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/js/form.js" ></script>

        <style>
            html{
                width: 100%;
                height: 100%;
                overflow: auto;
                overflow-x: hidden;
            }
        </style>
    </head>
    <body style="padding: 0 10px;box-sizing: border-box;">
        <div class="tdh_form_title">基本信息</div>
        <form id="userForm">
            <table class="tdh_form">
            <colgroup>
                <col width="15%" />
                <col width="35%" />
                <col width="15%" />
                <col width="35%" />
            </colgroup>
            <tr>
                <td class="tdTitle"><i class="required">*</i>用户ID</td>
                <td class="tdCont"><input class="inputText" type="text" name="yhid"/></td>
                <td class="tdTitle"><i class="required">*</i>姓名</td>
                <td class="tdCont"><input class="inputText" type="text" name="yhxm"/></td>
                <td rowspan="5"></td>
            </tr>
            <tr>
                <td class="tdTitle"><i class="required">*</i>口令</td>
                <td class="tdCont"><input class="inputText" type="text" name="yhkl"/></td>
                <td class="tdTitle"><i class="required">*</i>确认口令</td>
                <td class="tdCont"><input class="inputText" type="text" name="cfkl"/></td>
            </tr>
            <tr>
                <td class="tdTitle">性别</td>
                <td class="tdCont">
                    <select class="inputSel" data-edit="true" name="yhxb">
                        <option value=""></option>
                        <option value="1">男</option>
                        <option value="2">女</option>
                        <option value="3">其他</option>
                    </select>
                </td>
                <td class="tdTitle">部门</td>
                <td class="tdCont">
                    <select class="inputSel" data-edit="true" name="yhbm">
                        <option value=""></option>
                        <option value="1">立案庭</option>
                        <option value="2">业务庭</option>
                        <option value="3">办公室</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tdTitle">出生日期</td>
                <td class="tdCont"><input class="Wdate inputText" style="border: 0px" type="text" onClick="WdatePicker()" readonly="readonly" name="csrq" /></td>
                <td class="tdTitle">排序号</td>
                <td class="tdCont"><input class="inputText" type="text" name="pxh" oninput = "value=value.replace(/[^\d]/g,'')"/></td>
            </tr>
            <tr>
                <td class="tdTitle">禁用</td>
                <td class="tdCont">
                    <label><input name="sfjy" class="inputCheck" type="checkbox" /></label>
                </td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="tdTitle">头像</td>
                <td class="tdCont" colspan="3">
                    <input class="inputText " type="text" name="wjmc" id="wjmc" style="width: 80%" readonly="readonly"/>
                    <input type="file" style="display: none;" id="upload">
                    <a class="tdh_btn tdh_btn_blue" onclick="uploadFile()" style="float: right">上传</a>
                </td>
            </tr>
        </table>
        </form>
        <%--    按钮区域    --%>
        <div style="text-align: center; padding-top: 30px;">
            <a class="tdh_btn tdh_btn_blue" onclick="doSave();"><i class="tdh_icon icon_save"></i>保存</a>
            <a class="tdh_btn tdh_btn_blue"><i class="tdh_icon icon_return"></i>关闭</a>
        </div>

        <%--隐藏--%>
        <div class="hiddenDiv">
            <input type="hidden" id="CONTEXT_PATH" value="${CONTEXT_PATH}">
        </div>
    </body>
</html>

