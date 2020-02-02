module.controller('SearchFastController',
    function ($scope, $filter) {

        
        $scope.items = $scope.empresas;        
        
        $scope.$watch('search', function(val)
        { 
            $scope.items = $filter('filter')($scope.items2, val);
        });

})