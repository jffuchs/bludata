
module.controller('EmpresaController', function ($scope, EmpresaService) {

    $scope.empresas = EmpresaService.list();

    $scope.saveEmpresa = function () {
        EmpresaService.save($scope.newempresa);
        $scope.newempresa = {};
    }


    $scope.delete = function (id) {

        EmpresaService.delete(id);
        if ($scope.newempresa.id == id) $scope.newempresa = {};
    }


    $scope.edit = function (id) {
        $scope.newempresa = angular.copy(EmpresaService.get(id));
    }
})