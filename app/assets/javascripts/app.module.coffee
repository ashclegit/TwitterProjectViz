angular.module('unity-site', [
  'ui.router',
  'templates',
  'ngMaterial',
  ])
  .run(['$rootScope', '$state', '$stateParams', '$log',
    ($rootScope, $state, $stateParams, $log) ->
      $log.info('Loading Unity Site...');
      $rootScope.$state = $state;
      $rootScope.$stateParams = $stateParams;
  ]);
