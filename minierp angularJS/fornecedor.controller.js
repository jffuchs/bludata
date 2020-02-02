
module.controller('FornecedorController', function ($scope, FornecedorService, EmpresaService) {

    $scope.fornecedores = FornecedorService.list();
    $scope.empresas = EmpresaService.list();
    

    $scope.saveFornecedor = function () {
        FornecedorService.save($scope.newfornecedor);
        $scope.newfornecedor = {};
    }

    $scope.okSeleciona = function(emp) {
        debugger
        $scope.newfornecedor = emp;
        $scope.newfornecedor.nomeempresa = emp.nomeFantasia;
        $scope.newfornecedor.idempresa = emp.id;
        $("#modelId").modal("hide");
    }


    $scope.delete = function (id) {

        FornecedorService.delete(id);
        if ($scope.newfornecedor.id == id) $scope.newfornecedor = {};
    }


    $scope.edit = function (id) {
        $scope.newfornecedor = angular.copy(FornecedorService.get(id));
    }
})