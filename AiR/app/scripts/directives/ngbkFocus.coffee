define(['directives/directives'], (directives)->
  directives.directive('ngbkFocus', ['$rootScope', ($rootScope)->
    return {
    restrict: 'A',
    scope: true,
    link: (scope, element, attrs)->
      element[0].focus()
    }
  ])
)
