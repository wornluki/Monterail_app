angular.module 'monterailApp'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'question',
        url: '/question/:id'
        templateUrl: 'app/question/singleQuestion.html'
        controller: 'SingleQuestionController'
        controllerAs: 'vmQ'

    $urlRouterProvider.otherwise '/'
