var id = 0;
var strid = '';
var datas = new Array();
function addHtml() {
    id = (parseInt(id) + 1);
    strid += id + ',';
    $('.specific').append(
        '' +
        '\n' +
        '    <div class="layui-form-item">\n' +
        '        <label class="layui-form-label">标题</label>\n' +
        '        <div class="layui-input-block">\n' +
        '            <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input specificTitle">\n' +
        '        </div>\n' +
        '    </div>\n' +
        '    <div class="layui-form-item layui-form-text">\n' +
        '        <label class="layui-form-label">内容</label>\n' +
        '        <div class="layui-input-block">\n' +
        '            <textarea name="desc" placeholder="请输入内容" class="layui-textarea specificContent"></textarea>\n' +
        '        </div>\n' +
        '    </div>\n' +
        '    <div class="layui-form-item">\n' +
        '        <label class="layui-form-label">备注</label>\n' +
        '        <div class="layui-input-block">\n' +
        '            <input type="text" name="title" required  lay-verify="required" placeholder="请输入备注" autocomplete="off" class="layui-input specificRemarks">\n' +
        '        </div>\n' +
        '    </div>\n' +
        '    <div class="layui-form-item">\n' +
        '        <div class="layui-input-block">\n' +
        '            <button class="layui-btn layui-btn-blue" onclick="saveSpecificInfo()">保存</button>\n' +
        '            <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
        '        </div>\n' +
        '    </div>\n' +
        '');
}

function saveSpecificInfo() {
    var data = {
        'title' : $(".specificTitle").val(),
        'content' : $(".specificContent").val(),
        'remarks' : $(".specificRemarks").val()
    };
    datas.push(data);
    $('.specificInfo').append(
        '<div>' +
        '<hr size="1" width="100%"/>' +
        '<div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">标题</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerSpecificTitle">' + $(".specificTitle").val() + '</label>\n' +
        ' </div>\n' +
        ' <div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">内容</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerSpecificContent">' + $(".specificContent").val() + '</label>\n' +
        ' </div>\n' +
        ' <div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">备注</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerSpecificRemarks">' + $(".specificRemarks").val() + '</label>\n' +
        ' </div>' +
        '</div>');
    $('.specific').html('');
}

function saveFlowerInfo() {
    $('.reset').css('display', 'none');
    $('.saveFlowerInfo').css('display', 'none');
    $('.flower_info').html(
        '<div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">花名</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerInfoName">' + $(".flowerName").val() + '</label>\n' +
        ' </div>\n' +
        ' <div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">花语</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerInfoLanguage">' + $(".flowerLanguage").val() + '</label>\n' +
        ' </div>\n' +
        ' <div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">图片</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerInfoImg">' + flowerImg() + '</label>\n' +
        ' </div>\n' +
        ' <div class="layui-form-item">\n' +
        '     <label class="layui-form-label label_width">备注</label>\n' +
        '     <label class="info layui-form-label label_width_value flowerInfoRemarks">' + $(".flowerRemarks").val() + '</label>\n' +
        ' </div>\n');
}

function isEmpty(obj) {
    if (obj == null || "" === obj || "undefined" === (obj) || "null" === (obj)) return true;
    return false;
}

function flowerImg() {
    var flowerImg = $(".flowerImg").val();
    if (isEmpty(flowerImg)) return '无';
    else return flowerImg;
}

function ajaxSave() {
    var data = {
        "remarks": $(".flowerInfoRemarks").html(),
        "flowerName": $(".flowerInfoName").html(),
        "flowerLanguage": $(".flowerInfoLanguage").html(),
        "flowerImg": $(".flowerInfoImg").html(),
        "specific": JSON.stringify(datas)
    };
    $.ajax({
        url: "http://localhost:17900/flower/flower",
        type: 'post',
        dataType: 'json',
        async: false,
        timeout: 1000,
        data: data,
        success: function (data) {
            if (data.status === '1') {
                layui.layer.msg(data.msg);
            } else if (data.status === '10000') {
                layui.layer.msg(data.msg);
                parent.location.href = "../../login.html";
            } else {
                window.history.go(-1);
            }
        },
        fail: function (err) {
            alert(err);
        }
    });
}