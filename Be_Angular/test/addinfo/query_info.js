angular.module("myApp",[]).controller("myCtrl",['$scope',function($scope){
    $scope.myModel={
        isShow:false,
        title: '编辑课程',
        data:{},
        show:function () {
            this.isShow=true;
        },
        hide:function () {
            this.isShow=false;
        }
    };
    $scope.myModel.data=[{'name':'111111'},{"name":'123'}]
}]);