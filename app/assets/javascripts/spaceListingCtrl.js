(function(){
  "use Strict"
  angular.module("app").controller("spaceListingCtrl",
  function($scope, $http, $location){
    $scope.currentPage = 1;
    $scope.pageSize = 3;

    $scope.pageChangeHandler = function(num) {
      console.log('space listing page changed to ' + num);
    };

    $scope.spaceListings = [];
    $scope.setup = function(){
      var absUrlArray = $location.absUrl().split('&');
      var search_term = null;
      for (var i = 0; i < absUrlArray.length; i++) {
        if (absUrlArray[i].includes("search_term")){
          search_term = absUrlArray[i];
        }
      }
      if(search_term !== null){
        $http.get("/api/v1/space_listings.json?"+search_term).then(function(response){
          $scope.spaceListings = response.data;
        });
      }else{
        $http.get("/api/v1/space_listings.json").then(function(response){
          $scope.spaceListings = response.data;
        });
      }
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
