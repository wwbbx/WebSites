# configuration for require.js
require.config({
    baseUrl: 'scripts'
    paths: {
        angular: '../vendor/angular'
        jquery: '../vendor/jquery.min'
        domReady: '../vendor/domReady'
        twitter: '../vendor/bootstrap.min'
        angularResource: '../vendor/angular-resource'
        angularRoute: '../vendor/angular-route'
    }

    shim:{
        twitter: { deps: ['jquery']}
        angular: { deps: ['jquery', 'twitter'], exports: 'angular'}
        angularRoute: { deps: ['angular'] }
        angularResource: { deps: ['angular'] }
    }
})

require(
  ['app',
   'bootstrap',
   'controllers/RootController',
   'controllers/mainController',
   'directives/ngbkFocus'],
   (AiR)->
      'use strict'
      #debugger
      AiR.config(['$routeProvider',
      ($routeProvider)->
        # define angular routes here.
        $routeProvider.when('/main', {
          #controller: 'mainController'
          template: 'views/mainPage.html'
        }).otherwise({redirectTo: '/'})
      ])
)
