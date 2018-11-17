$(document).ready(function () {
    $.ajax({
        url: "http://localhost:17900/flower/flowers?flowerName",
        type: 'get',
        dataType: 'json',
        timeout: 1000,
        success: function (data) {
            var info = data.body;
            for (var i = 0; i < info.length; i++) {
                var deleteStatus = info[i].delete;
                var deleteStr = '是';
                if (deleteStatus === 0) {
                    deleteStr = '否';
                }
                $('.flowerInfo').append(
                    '<tr >\n' +
                    '                                    <td>' + info[i].id + '</td>\n' +
                    '                                    <td>' + info[i].flowerImg + '</td>\n' +
                    '                                    <td>' + info[i].flowerName + '</td>\n' +
                    '                                    <td>' + info[i].flowerLanguage + '</td>\n' +
                    '                                    <td data-value="78025368997">' + info[i].createTime + '</td>\n' +
                    '                                    <td data-value="1"><span class="label bg-success" title="Active">' + deleteStr + '</span></td>\n' +
                    '                                    <td><button type="button" class="btn btn-sm btn-primary " ng-click="myModel.show()"><i></i>查看</button></td>' +
                    '                                </tr>');
            }
        }
    })
});



function addInfo() {

}