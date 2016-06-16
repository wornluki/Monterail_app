angular.module 'monterailApp'
  .factory 'data', ($http) ->
    'ngInject'

    #Usualy I used Restangular but serve data from file will be better for this fast example

    api = 'http://localhost:3000/api/json/data.json'
    userS = []


    getData = () ->
      $http.get(api)


    getUser = (user) ->

      userS = user
      console.log userS
      userS






    service =
      getUser: getUser,
      getData: getData,
      userS: userS
