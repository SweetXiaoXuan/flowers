var form = layui.form
    ,layer = layui.layer;

layui.use('upload', function(){
    var upload = layui.upload;

    //执行实例
    var uploadInst = upload.render({
        elem: '#businessLicense' //绑定元素
        ,url: 'http://localhost:8119/merchant/upload/'
        // ,url: 'http://47.98.40.106:8119/merchant/upload/'
        ,done: function(res){
            $('#businessLicense').css('display', 'none');
            // $('.businessLicenseImg').html(res.body.path);
            $('.businessLicenseImg').html("<img src='" + res.body.path + "' width='200' height='200'/>");
            //上传完毕回调
            console.info(res)
        }
        ,error: function(){
            //请求异常回调
            layer.msg('上传失败，请重新上传');
        }
    });
});