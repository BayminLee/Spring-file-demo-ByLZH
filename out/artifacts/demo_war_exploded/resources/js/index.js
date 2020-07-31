var mygrid;

$(function(){

    CONTEXT_PATH = $.trim($("#CONTEXT_PATH").val());

    gridInit();
    doSearch();
});

/**
 * 初始化grid
 */
function gridInit() {
    mygrid = new dhtmlXGridObject('grid');
    mygrid.setImagePath(CONTEXT_PATH + "/resources/static/plugg/dhtmlx/dhtmlxGrid/codebase/imgs/");
    mygrid.setHeader("序号,姓名,账号,部门,性别");
    mygrid.setInitWidths("40,*,200,200,200");
    mygrid.setColTypes("ro,ro,ro,ro,ro");
    mygrid.setColAlign("center,center,center,center,center");
    mygrid.setSkin("dhx_skyblue");
    mygrid.init();
}

/**
 * 查询
 */
function doSearch() {
    var name = $.trim($("#name").val());
    var depart = $.trim($("#depart").val());
    mygrid.clearAll();
    mygrid.loadXML(CONTEXT_PATH + "/user/getUserList.do?name=" + encodeURI(name) + "&depart=" + encodeURI(depart));
}

/**
 * 新增页面
 */
function add() {
    openwindow(CONTEXT_PATH + "/add.do", "", 800, 360);
}

/**
 * 打开窗口
 * @param url
 * @param name
 * @param iWidth
 * @param iHeight
 */
function openwindow(url,name,iWidth,iHeight) {
    var url;                            //转向网页的地址;
    var name;                           //网页名称，可为空;
    var iWidth;                         //弹出窗口的宽度;
    var iHeight;                        //弹出窗口的高度;
    //window.screen.height获得屏幕的高，window.screen.width获得屏幕的宽
    var iTop = (window.screen.height-30-iHeight)/2;       //获得窗口的垂直位置;
    var iLeft = (window.screen.width-10-iWidth)/2;        //获得窗口的水平位置;
    window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}