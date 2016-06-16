angular.module 'monterailApp'
  .directive 'userModal', ->

    UserModalController = (data, $scope) ->
      'ngInject'
      modal = this
      modal.user = []

      getUser = (user) ->
        modal.user = user
        console.log modal.user

      modal.getUser = getUser
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/userModal/userModal.html'
      controller: UserModalController
      controllerAs: 'modal'
      bindToController: true
