(function(){
  "use Strict"
  angular.module("app").controller("bookingCtrl",
    function($scope, $http){

      $scope.spaceListings = [];
      $scope.your_bookings_setup = function(){
        $http.get("/api/v1/your_bookings.json").then(function(response){
          $scope.spaceListings = response.data;
          console.log(response.data);
        });
      }

      $scope.rentedSpaces = [];
      $scope.your_rented_spaces_setup = function(){
        $http.get("/api/v1/your_rented_spaces.json").then(function(response){
          $scope.rentedSpaces = response.data;
          console.log(response.data);
        });
      }


      window.$scope = $scope;
  });
})();
