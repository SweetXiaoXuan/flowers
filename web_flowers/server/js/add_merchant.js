function btnWithdraw() {
    layui.use('upload', function() {

        $.ajax({
            url: "http://localhost:8119/merchant/merchant",
            // url: "http://47.98.40.106:8119/merchant/merchant",
            headers: {"rsid": localStorage.getItem("rsid")},
            type: 'post',
            dataType: 'json',
            async: false,
            timeout: 1000,
            data: {
                "merchantName": $(".merchantName").val(),
                "businessLicense": $(".businessLicenseImg").html(),
                "address": $(".address").val(),
                "bossName": $(".bossName").val(),
                "idnumber": $(".idnumber").val(),
                "telephone": $(".telephone").val(),
                "bankNumber": $(".bankNumber").val(),
                "commissionRate": $(".commissionRate").val(),
                "businessLicenseNumber": $(".businessLicenseNumber").val(),
                "password": $(".password").val(),
                "repeatPassword": $(".repeatPassword").val(),
                "type": "save",
                "level": $(".level").val(),
                "subtopic": $(".subtopic").val()
            },
            success: function (data, status) {
                if (data.status === '1') {
                    layui.layer.msg(data.msg);
                } else if (data.status === '10000') {
                    layui.layer.msg(data.msg);
                    parent.location.href = "../../login.html";
                } else {
                    window.history.go(-1);
                }
                // parent.location.reload();
                // window.location.href ="../merchants.html";
            },
            fail: function (err) {
                alert(err);
            }
        })
    });
}