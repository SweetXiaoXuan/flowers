$(document).ready(function(){
    $.ajax({
        url: "http://localhost:17900/flower/console",
        // data: {"rsid": localStorage.getItem("rsid")},
        type: 'get',
        dataType: 'json',
        timeout: 1000,
        success: function (data) {
            if (data.code === '0') {
                $(".userAll").html(data.body.countUserAll);
                $(".flowerAll").html(data.body.countFlowerAll);
                $(".todayFlower").html(data.body.countFlowerToday);
            } else if(data.status === '10000') {
                parent.location.href ="../../login.html";
            }
        },
        fail: function () {
            parent.location.href ="../../login.html";
        }
    })
});