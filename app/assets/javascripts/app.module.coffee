angular.module('unity-site', [
  'ui.router',
  'templates',
  'ngMaterial',
  ])
  .run(['$rootScope', '$state', '$stateParams', '$log',
    ($rootScope, $state, $stateParams, $log) ->
      $log.info('Loading Main Module');
      $rootScope.$state = $state;
      $rootScope.$stateParams = $stateParams;
  ]);
