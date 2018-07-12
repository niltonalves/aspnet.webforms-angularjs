demoApp.controller('mainController', function ($scope) {
    
    $scope.Salvar = function (form) {
        if (form.$invalid) {
            alert("erro no formulário");
        } else {
            alert("tudo um sucesso");
            console.log(form);
        }
    }
});