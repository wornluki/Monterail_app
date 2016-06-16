angular.module 'monterailApp'
  .controller 'SingleQuestionController', (data, $stateParams) ->
    'ngInject'
    vm = this

    vm.lastItemAdded = ""
    getUser = (data_user) ->
      vm.user = data_user
      console.log vm.user
      vm.register_date = new Date(Date.parse(vm.user.register_date))
      console.log vm.register_date
      data.user = vm.user
      vm.user

    getData = ->
      data.getData().then (res) ->
        vm.data = res.data
        vm.question = vm.data.questions[vm.id - 1]

        for i in [0 .. vm.question.answers.length - 1]
          addedString = vm.question.answers[i].added
          vm.question.answers[i].added = new Date(Date.parse(addedString))
          
        vm.lastItemAdded = vm.question.answers[vm.question.answers.length - 1].added
        vm.question

    upvote = (vote) ->
      #vm.buttonClicked = true
      return vote.votes++


    downvote = (vote) ->
      #vm.buttonClicked = true
      return vote.votes--



    getData()
    vm.getUser = getUser
    vm.buttonClicked = false
    vm.id =  $stateParams.id
    vm.upvote = upvote
    vm.downvote = downvote

    return
