<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>首页</title>
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/tdh/form/css/form.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/tdh/btn/css/btn.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/dhtmlxgrid.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/ext/dhtmlxgrid_pgn_bricks.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/skins/dhtmlxgrid_dhx_skyblue.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/tdh/grid.css" />
        <link rel="stylesheet" href="${CONTEXT_PATH}/resources/css/index.css" />

        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/lib/jquery.min.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/DatePicker/WdatePicker.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/tdh/btn/js/tdh.btn.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/tdh/form/js/tdh.form.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/dhtmlxcommon.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/dhtmlxgrid.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/dhtmlxgridcell.js" ></script>
        <script type="text/javascript" src="${CONTEXT_PATH}/resources/js/index.js" ></script>
    </head>
    <body>
        <div class="tdh_form_search" style="height: 100%">
            <table>
                <colgroup>
                    <col width="100" />
                    <col width="150" />
                    <col width="100" />
                    <col width="280" />
                    <col width="*" />
                </colgroup>
                <tr>
                    <td class="tdTitle">姓名：</td>
                    <td class="tdCont">
                        <input class="inputText" type="text" id="name"/>
                    </td>
                    <td class="tdTitle">部门：</td>
                    <td class="tdCont">
                        <select class="inputSel" id="depart">${departOption}</select>
                    </td>
                    <td align="right">
                        <a class="tdh_btn tdh_btn_blue" onclick="doSearch()"><i class="tdh_icon icon_search"></i>查询</a>
                        <a class="tdh_btn tdh_btn_blue" onclick="add()"><i class="tdh_icon icon_add"></i>新增</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="gridDiv">
            <div id="grid"></div>
        </div>

        <%--隐藏--%>
        <div class="hiddenDiv">
            <input type="hidden" id="CONTEXT_PATH" value="${CONTEXT_PATH}">
        </div>
    </body>
</html>

