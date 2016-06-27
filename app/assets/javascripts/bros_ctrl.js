(function() {
  "use string";

  angular.module("app").controller("brosCtrl", function($scope,$http) {
    $scope.setup = function() {
      $http.get("/api/v1/bros.json").then(function(response) {
        console.log(response.data);
        $scope.people = response.data;
      });
    };
  });

}());