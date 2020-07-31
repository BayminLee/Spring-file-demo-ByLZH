
var CONTEXT_PATH;

var wjid;

$(function () {

    CONTEXT_PATH = $.trim($("#CONTEXT_PATH").val());

    $('#upload').change(function () {
        var upBtnObj = $(this);
        if (upBtnObj.val() == '') {
            return;
        }
        var files = this.files[0];
        var wjmc = files.name;
        var wjgs = wjmc.substring(wjmc.lastIndexOf(".")).toUpperCase().replace('.', '');
        var size = files.size;
        if (!checkWjgs(wjgs)) {
            alert("上传失败。仅限上传 jpg 格式文件");
            return
        } else if (size / 1024 / 1024 > 10) {
            alert('上传失败。文件大小不得超过10M');
            return
        }
        $('#wjmc').val(wjmc);
        $(this).val("");
        uploadFile2Temp(files);
    })
})

/**
 * 格式校验
 * @param ext
 * @returns {boolean}
 */
function checkWjgs(ext) {
    if (!ext.match(/JPG/i)) {
        return false;
    }
    return true;
}

/**
 * 选择文件上传
 */
function uploadFile() {
    $("#upload").trigger('click')
}

function uploadFile2Temp(files) {
    var formData = new FormData();
    formData.append("file", files);

    $.ajax({
        async: true,
        type: 'post',
        url: CONTEXT_PATH + '/wj/uploadFile.do',
        data: formData,
        dataType: "json",
        processData: false,
        contentType: false,
        success: function (rtn) {
            if (rtn.code == "0") {
            } else {
            }
        },
        error: function () {
            alert("上传失败");
        }
    })
}