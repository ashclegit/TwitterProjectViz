angular.module('unity-site')
  .filter('dotToDash', () ->
    return (string) ->
      return string.split('.').join('-');
  );
