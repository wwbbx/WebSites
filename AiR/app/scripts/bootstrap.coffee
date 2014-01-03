# when DOM is ready, app/scripts/bootstrap.js will trigger AngularJS to start
# and begin to run the application
define(['angular', 'domReady', 'app'], (angular, domReady)->
  domReady(->
    angular.bootstrap(document, ['AiR'])
  )
)

