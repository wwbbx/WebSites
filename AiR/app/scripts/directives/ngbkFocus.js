// Generated by CoffeeScript 1.6.3
(function() {
  define(['directives/directives'], function(directives) {
    return directives.directive('ngbkFocus', [
      '$rootScope', function($rootScope) {
        return {
          restrict: 'A',
          scope: true,
          link: function(scope, element, attrs) {
            return element[0].focus();
          }
        };
      }
    ]);
  });

}).call(this);

/*
//@ sourceMappingURL=ngbkFocus.map
*/
