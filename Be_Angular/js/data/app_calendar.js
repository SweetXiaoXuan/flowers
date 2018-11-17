$(document).ready(function () {
    $.ajax({
        url: "http://localhost:17900/flower/flowers?flowerName",
        type: 'get',
        dataType: 'json',
        timeout: 1000,
        success: function (data) {
            var info = data.body;
            for (var i = 0; i < info.length; i++) {
                $('.flowerInfo').append('<tr >\n' +
                    '                                    <td>' + info[i].id + '</td>\n' +
                    '                                    <td>' + info[i].flowerImg + '</td>\n' +
                    '                                    <td><a href>' + info[i].flowerName + '</a></td>\n' +
                    '                                    <td>' + info[i].flowerLanguage + '</td>\n' +
                    '                                    <td data-value="78025368997">' + info[i].createTime + '</td>\n' +
                    '                                    <td data-value="1"><span class="label bg-success" title="Active">' + info[i].delete + '</span></td>\n' +
                    '                                </tr>');
            }
        }
    })
});
