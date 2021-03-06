// Generated by CoffeeScript 1.6.3
(function() {
  require.config({
    baseUrl: 'scripts',
    paths: {
      angular: '../vendor/angular',
      jquery: '../vendor/jquery.min',
      domReady: '../vendor/domReady',
      twitter: '../vendor/bootstrap.min',
      angularResource: '../vendor/angular-resource',
      angularRoute: '../vendor/angular-route'
    },
    shim: {
      twitter: {
        deps: ['jquery']
      },
      angular: {
        deps: ['jquery', 'twitter'],
        exports: 'angular'
      },
      angularRoute: {
        deps: ['angular']
      },
      angularResource: {
        deps: ['angular']
      }
    }
  });

  require(['app', 'bootstrap', 'controllers/RootController', 'controllers/mainController', 'directives/ngbkFocus'], function(AiR) {
    'use strict';
    return AiR.config([
      '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
        $routeProvider.when('/', {
          templateUrl: 'views/mainPage.html',
          controller: 'mainController'
        }).otherwise({
          redirectTo: '/'
        });
        return $locationProvider.html5Mode(true);
      }
    ]);
  });

}).call(this);

/*
//@ sourceMappingURL=main.map
*/
