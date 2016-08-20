angular.module('unity-site')
  .factory('assignmentFactory', ['$q', '$http',
    ($q, $http) ->
      factory = {};

      factory.assignments = null;

      factory.getAll = () ->
        if factory.assignments then return $q.when(factory.assignments);
        return $http.get('/assets/assignments/data/assignments.json')
          .then((response) ->
            factory.assignments = response.data;
            return factory.assignments;
          )

      return factory;
  ]);
