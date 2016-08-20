angular.module('unity-site')
  .controller('cardsController', ['assignments', '$state',
    (assignments, $state) ->
      this.cards = assignments;

      this.go = (selected_assignment) ->
        $state.go('home.assignment', {assignment: selected_assignment});

      return;
  ]);
