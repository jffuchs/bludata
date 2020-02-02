module.service('FornecedorService', function () {
    //to create unique fornecedor id
    var uid = 1;
    
    //fornecedor array to hold list of all fornecedores
    var fornecedores = [{
        id: 0,
        'nomeFantasia': 'Bludata',
        'uf': 'SC',
        'cnpj': '00.633.617/0001-44'
    }];
    
    //save method create a new fornecedor if not already exists
    //else update the existing object
    this.save = function (fornecedor) {
        if (fornecedor.id == null) {
            //if this is new fornecedor, add it in fornecedores array
            fornecedor.id = uid++;
            fornecedores.push(fornecedor);
        } else {
            //for existing fornecedor, find this fornecedor using id
            //and update it.
            for (i in fornecedores) {
                if (fornecedores[i].id == fornecedor.id) {
                    fornecedores[i] = fornecedor;
                }
            }
        }

    }

    //simply search fornecedores list for given id
    //and returns the fornecedor object if found
    this.get = function (id) {
        for (i in fornecedores) {
            if (fornecedores[i].id == id) {
                return fornecedores[i];
            }
        }

    }
    
    //iterate through fornecedores list and delete 
    //fornecedor if found
    this.delete = function (id) {
        for (i in fornecedores) {
            if (fornecedores[i].id == id) {
                fornecedores.splice(i, 1);
            }
        }
    }

    //simply returns the fornecedores list
    this.list = function () {
        return fornecedores;
    }
});

