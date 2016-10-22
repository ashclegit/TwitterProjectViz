angular.module('debate-visualization', [
  'ui.router',
  'templates'
  ])
  .run(['$rootScope', '$state', '$stateParams', '$log',
    ($rootScope, $state, $stateParams, $log) ->
      $log.info('Loading Main Module');
      $rootScope.$state = $state;
      $rootScope.$stateParams = $stateParams;
  ]);
