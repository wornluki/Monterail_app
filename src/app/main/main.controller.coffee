angular.module 'monterailApp'
  .controller 'MainController', (data, $filter) ->
    'ngInject'
    vm = this
    vm.data = []
    orderBy = $filter('orderBy');

    getData = ->
      data.getData().then (res) ->
        vm.data = res.data
        for i in [0 .. vm.data.questions.length - 1]
          addedString = vm.data.questions[i].added

          vm.data.questions[i].added = new Date(Date.parse(addedString))


    order = (predicate) ->
      vm.predicate = predicate
      vm.data.questions = orderBy(vm.data.questions, predicate, true)



    getData()
    vm.predicate = ""
    vm.order = order

    return
