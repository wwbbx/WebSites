# app/scripts/app.js will define our web application using angular.
define(['angular', 'angularResource', 'angularRoute', 'controllers/controllers',
        'services/services', 'filters/filters',
        'directives/directives'], (angular)->
  return angular.module('AiR', ['ngResource', 'ngRoute', 'controllers',
                                'services', 'filters', 'directives'])
)
