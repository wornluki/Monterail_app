angular.module 'monterailApp'
  .directive 'searchBox', ->

    SearchBoxController = () ->
      'ngInject'
      vm = this
      
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/searchBox/searchBox.html'
      controller: SearchBoxController
      controllerAs: 'vm'
      bindToController: true
