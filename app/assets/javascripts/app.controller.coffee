angular.module('debate-visualization')
  .controller('appController', ['$mdSidenav', '$state',
    ($mdSidenav, $state) ->
      this.toggleLeft = () ->
        $mdSidenav('left').toggle();
        return;

      this.toggleRight = () ->
        $mdSidenav('right').toggle();
        return;
      return;
  ]);
