angular.module('unity-site')
  .controller('appController', ['$mdSidenav', '$state', 'assignmentFactory',
    ($mdSidenav, $state, assignmentFactory) ->
      this.toggleLeft = () ->
        $mdSidenav('left').toggle();
        return;

      this.toggleRight = () ->
        $mdSidenav('right').toggle();
        return;

      this.assignments = assignmentFactory.getAll();

      this.go = (selected_assignment) ->
        $state.go('home.assignment', {assignment: selected_assignment});
        $mdSidenav('left').toggle();
        return;

      return;
  ]);
