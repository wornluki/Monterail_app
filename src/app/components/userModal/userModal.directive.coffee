angular.module 'monterailApp'
  .directive 'userModal', ->

    UserModalController = (moment) ->
      'ngInject'
      vm = this
      # "vm.creationDate" is available by directive option "bindToController: true"
      # vm.relativeDate = moment(vm.creationDate).fromNow()
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/userModal/userModal.html'
      controller: UserModalController
      controllerAs: 'vm'
      bindToController: true
