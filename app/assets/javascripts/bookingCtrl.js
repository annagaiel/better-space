(function(){
  "use Strict"
  angular.module("app").controller("bookingCtrl",
    function($scope, $http){

      $scope.bookings = [];
      $scope.setup = function(){
        $http.get("/api/v1/bookings.json").then(function(response){
          $scope.bookings = response.data;
          console.log(response.data);
        });
      }
      window.$scope = $scope;
  });
})();
