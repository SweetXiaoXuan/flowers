function btnWithdraw() {
    layui.use('upload', function() {
        $.ajax({
            url: "http://localhost:17900/flower/flower",
            type: 'put',
            dataType: 'json',
            async: false,
            timeout: 1000,
            data: {
                "remarks": $(".flowerRemarks").val(),
                "flowerName": $(".flowerName").html(),
                "flowerLanguage": $(".flowerLanguage").val(),
                "flowerImg": $(".flowerImg").val(),
            },
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
        })
    });
}