var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

app.controller('OrdersCtrl', ['$scope', function($scope){
  $scope.name = "Michael";
  // Here will be all code belonging to this controller

}]);
