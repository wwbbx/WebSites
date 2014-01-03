define(['controllers/controllers', (controllers)->
  controllers.controller('mainController', ['$scope', ($scope)->
    $scope.name = 'This controller name is: mainController'
  ])
])
