angular.module('unity-site')
  .config(['$stateProvider', '$urlRouterProvider',
    ($stateProvider, $urlRouterProvider) ->
      $stateProvider
        .state('home', {
          abstract: true
          url: '/home'
          templateUrl: 'layout/layout.html'
          controller: 'appController as appCtrl'
          resolve: {
            assignments: (assignmentFactory) ->
              return assignmentFactory.getAll();
          }
        })
        .state('home.cards', {
          url: '/cards'
          templateUrl: 'cards/layout/cards.html'
          controller: 'cardsController as cardCtrl'
        })
        .state('home.assignment', {
          url: '/display'
          templateUrl: 'assignments/layout/assignments.html'
          controller: 'assignmentsController as assignmentsCtrl'
          params: {assignment: null}
          onEnter: ($stateParams, $state) ->
            $state.go('home.cards') unless ($stateParams.assignment);
            return;
        })

      $urlRouterProvider.otherwise('/home/cards');        ;
  ])
  .config(['$mdThemingProvider',
    ($mdThemingProvider) ->
      $mdThemingProvider.theme('darkgrey').backgroundPalette('grey').dark();
      $mdThemingProvider.theme('darkorange').backgroundPalette('orange').dark();
      $mdThemingProvider.theme('darkpurple').backgroundPalette('deep-purple').dark();
      $mdThemingProvider.theme('darkgreen').backgroundPalette('green').dark();
      $mdThemingProvider.theme('darkblue').backgroundPalette('blue').dark();
      $mdThemingProvider.theme('darkred').backgroundPalette('red').dark();
  ]);
