(function(){
  "use Strict"
  angular.module("app").controller("spaceListingCtrl",
  function($scope, $http){
    $scope.currentPage = 1;
    $scope.pageSize = 2;

    $scope.pageChangeHandler = function(num) {
      console.log('space listing page changed to ' + num);
    };

    $scope.spaceListings = [];
    $scope.setup = function(){
      $http.get("/api/v1/space_listings.json").then(function(response){
        $scope.spaceListings = response.data;
      });
    }

    $scope.descending = false;

    $scope.toggleOrder = function(attribute, direction) {
      console.log("toggle order");

      if($scope.descending != direction) {
        $scope.descending = direction;
        console.log($scope.descending);
      }
    }

    window.$scope = $scope;
  });
})();
