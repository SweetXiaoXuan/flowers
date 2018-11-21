var app = angular.module("app", []);
app.controller('getInfoCon', function ($scope, $http) {
    $http.get('http://localhost:17900/flower/flowers?flowerName').then(function (result) {
        $scope.infos = result.data.body;
    })
})
