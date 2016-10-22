angular.module('debate-visualization')
  .controller('appController', ['$http',
    ($http) ->
      self = this;
      self.words = "loading..."
      $http.get('assets/wordcloud/data/hillary-wc.json').then( (response) ->
        self.words = response.data.map((d) -> {text: d.word, size: 10 + Math.random() * 90, sentiment: Math.random() + 1});
      );
      return;
  ]);
