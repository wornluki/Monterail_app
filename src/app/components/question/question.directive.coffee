angular.module 'monterailApp'
  .directive 'question', ->

    QuestionController = (data) ->
      'ngInject'
      vm = this


      getUser = (data_user) ->
        vm.user = data.getUser(data_user)
        #console.log vm.user

        # vm.user = data_user
        # console.log vm.user
        # vm.register_date = new Date(Date.parse(vm.user.register_date))
        # console.log vm.register_date
        # vm.user


      addQuestions = ->
        vm.limit += 5
        console.log vm.limit

      # data.user = vm.user
      vm.user = []
      vm.limit = 2
      vm.getUser = getUser
      vm.addQuestions = addQuestions

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/question/question.html'
      controller: QuestionController
      controllerAs: 'vm'
      bindToController: true
