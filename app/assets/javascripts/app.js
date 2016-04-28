var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

app.factory('models', [function(){
  var x = {
    orders: []
  };
  return x;
}]);

app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){

  $scope.orders = models.orders;

  $scope.addOrder = function(){
    if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){ return; }
    $scope.orders.push($scope.newOrder);
  }

  $scope.deleteOrder = function(order){
    $scope.orders.splice($scope.orders.indexOf(order), 1);
  }

}]);
