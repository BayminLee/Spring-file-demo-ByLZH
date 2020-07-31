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
            <table class="tdh_form">
            <colgroup>
                <col width="15%" />
                <col width="25%" />
                <col width="15%" />
                <col width="25%" />
                <col width="20%" />
            </colgroup>
            <tr>
                <td class="tdTitle"><i class="required">*</i>用户ID</td>
                <td class="tdCont"></td>
                <td class="tdTitle"><i class="required">*</i>姓名</td>
                <td class="tdCont"></td>
                <td rowspan="5"></td>
            </tr>
            <tr>
                <td class="tdTitle">性别</td>
                <td class="tdCont">
                </td>
                <td class="tdTitle">部门</td>
                <td class="tdCont">
                </td>
            </tr>
            <tr>
                <td class="tdTitle">出生日期</td>
                <td class="tdCont"></td>
                <td class="tdTitle">排序号</td>
                <td class="tdCont"></td>
            </tr>
            <tr>
                <td class="tdTitle">禁用</td>
                <td class="tdCont"></td>
                <td colspan="2"></td>
            </tr>
        </table>
    </body>
</html>

