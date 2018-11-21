var app = angular.module('flowerList', []);
app.controller('fInfo', function($scope, $window) {
    $scope.queryInfo = function() {
        $window.location.href = 'addinfo/add_info.html';
    };
});