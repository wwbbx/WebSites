# configuration for require.js
require.config({
    baseUrl: 'scripts'
    paths: {
        angular: '../vendor/angular.min'
        jquery: '../vendor/jquery.min'
        domReady: '../vendor/domReady'
        twitter: '../vendor/bootstrap.min'
        angularResource: '../vendor/angular-resource.min'
    }

    shim:{
        twitter: { deps: ['jquery']}
        angular: { deps: ['jquery', 'twitter'], exports: 'angular'}
        angularResource: { deps: ['angular'] }
    }
})

require(
  ['app',
   'bootstrap',
   'controllers/RootController',
   'controllers/mainController',
   'directives/ngbkFocus'],
   (angular, app)->
      'use strict'
      app.config(['$routeProvider', ($routeProvider)->
        # define angular routes here.
        $routeProvider.when('/', {
          controller: 'mainController'
          template: 'views/mainPage.html'
        }).otherwise({redirectTo: '/'})
      ])
)
