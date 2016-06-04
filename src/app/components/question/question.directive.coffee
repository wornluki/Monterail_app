angular.module 'monterailApp'
  .directive 'question', ->

    QuestionController = () ->
      'ngInject'
      vm = this
      
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/question/question.html'
      controller: QuestionController
      controllerAs: 'vm'
      bindToController: true
