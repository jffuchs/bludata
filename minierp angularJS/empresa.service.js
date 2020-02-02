module.service('EmpresaService', function () {
    //to create unique empresa id
    var uid = 1;
    
    //empresa array to hold list of all empresas
    var empresas = [{
        id: 1,
        'nomeFantasia': 'Bludata',
        'uf': 'SC',
        'cnpj': '00.633.617/0001-44'
    }, {id: 2,        
        'nomeFantasia': 'Cetelbrás educacional',
        'uf': 'SC',
        'cnpj': '00.722.500/0001-15'
    }];
    
    //save method create a new empresa if not already exists
    //else update the existing object
    this.save = function (empresa) {
        if (empresa.id == null) {
            //if this is new empresa, add it in empresas array
            empresa.id = uid++;
            empresas.push(empresa);
        } else {
            //for existing empresa, find this empresa using id
            //and update it.
            for (i in empresas) {
                if (empresas[i].id == empresa.id) {
                    empresas[i] = empresa;
                }
            }
        }

    }

    //simply search empresas list for given id
    //and returns the empresa object if found
    this.get = function (id) {
        for (i in empresas) {
            if (empresas[i].id == id) {
                return empresas[i];
            }
        }

    }
    
    //iterate through empresas list and delete 
    //empresa if found
    this.delete = function (id) {
        for (i in empresas) {
            if (empresas[i].id == id) {
                empresas.splice(i, 1);
            }
        }
    }

    //simply returns the empresas list
    this.list = function () {
        return empresas;
    }
});

