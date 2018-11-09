$(document).ready(function(){
    $.ajax({
        // url: "http://47.98.40.106:8119/merchant/merchantCommission",
        url: "http://localhost:8119/merchant/merchantCommission",
        data: {"rsid": localStorage.getItem("rsid")},
        type: 'get',
        dataType: 'json',
        timeout: 1000,
        success: function (data, status) {
            if (data.status === '0') {
                $(".all").html(data.body.all + "元");
                $(".can").html(data.body.can + "元");
                $(".already").html(data.body.already + "元");
            } else if(data.status === '10000') {
                parent.location.href ="../../login.html";
            }
        },
        fail: function (err, status) {
            parent.location.href ="../../login.html";
        }
    })
});