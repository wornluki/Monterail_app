angular.module 'monterailApp'
  .service 'data', ($http) ->
    'ngInject'

    #Usualy I used Restangular but serve data from file will be better for this fast example

    api = 'http://localhost:3000/api/json/data.json'
    user = []


    getData = () ->
      $http.get(api)





    @getData = getData
    #@getQuestion = getQuestion

    return
