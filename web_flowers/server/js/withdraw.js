function btnWithdraw() {
    $.ajax({
        url: "http://localhost:8119/merchant/withdraw",
        // url: "http://47.98.40.106:8119/merchant/withdraw",
        headers: {"rsid": localStorage.getItem("rsid")},
        type: 'post',
        dataType: 'json',
        timeout: 1000,
        data:{
            "price":$(".price").val(),
            "extract":$(".extract").val(),
            "account":$(".account").val(),
            "remarks":$(".remarks").val(),
            "arrival":$(".arrival").val()},
        success: function (data, status) {
            alert("1");
            if (data.status === '1') {
                alert(data.msg);
            } else if (data.status === '10000') {
                alert(data.msg);
                parent.location.href ="../../login.html";
            } else {
                window.history.go(-1);
            }
        },
        fail: function (err) {
            alert(err);
        }
    })
}