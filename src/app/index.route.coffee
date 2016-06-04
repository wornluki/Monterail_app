angular.module 'monterailApp'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'vm'
      .state 'question',
        url: '/question'
        templateUrl: 'app/question/question.html'
        controller: 'SingleQuestionController'
        controllerAs: 'vm'

    $urlRouterProvider.otherwise '/'
