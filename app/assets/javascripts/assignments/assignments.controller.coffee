angular.module('unity-site')
  .controller('assignmentsController', ['$stateParams',
    ($stateParams) ->
      this.assignment = $stateParams.assignment;
      return;
  ]);
