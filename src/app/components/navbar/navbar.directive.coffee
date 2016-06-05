angular.module 'monterailApp'
  .directive 'navbar', ->

    NavbarController = ($state  ) ->
      'ngInject'
      vm = this

      vm.state = false
      vm.state = $state.is('question')


      # "vm.creationDate" is available by directive option "bindToController: true"
      # vm.relativeDate = moment(vm.creationDate).fromNow()
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
