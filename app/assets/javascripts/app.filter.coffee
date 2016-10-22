angular.module('debate-visualization')
  .filter('dotToDash', () ->
    return (string) ->
      return string.split('.').join('-');
  );
