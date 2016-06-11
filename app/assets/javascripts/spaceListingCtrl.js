(function(){
  "use Strict"
  angular.module("app").controller("spaceListingCtrl",
  function($scope, $http){

    $scope.spaceListings = [];
    $scope.setup = function(){
      $http.get("/api/v1/space_listings.json").then(function(response){
        $scope.spaceListings = response.data;
      });
    }

    $scope.toggleOrder = function(attribute, direction) {
      if(attribute == 'day_rent') {
        $scope.descending = direction;
      }
      $scope.orderAttribute = attribute;
    }

    window.$scope = $scope;
  });
})();
