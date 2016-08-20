angular.module('unity-site')
  .controller('cardsController', ['assignmentFactory', '$state',
    (assignmentFactory, $state) ->
      this.cards = assignmentFactory.getAll();

      this.go = (selected_assignment) ->
        $state.go('home.assignment', {assignment: selected_assignment});

      return;
  ]);
