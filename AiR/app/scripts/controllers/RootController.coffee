define(['controllers/controllers'], (controllers)->
	controllers.controller('RootController', ['$scope', ($scope)->
		# use RootController to setup some values in $scope.
		$scope.greating = { text: 'AiR set by RootController' }
	])
)
