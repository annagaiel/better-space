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
      window.$scope = $scope;
  });
})();
