'use strict'

### Controllers ###

angular.module('app.controllers', ['app.services'])

.controller('AppCtrl', [
  '$scope'
  '$location'
  '$resource'
  '$rootScope'

($scope, $location, $resource, $rootScope) ->
  $rootScope.pageTitle = "Mochify"
  # Uses the url to determine if the selected
  # menu item should have the class active.
  $scope.$location = $location
  $scope.$watch('$location.path()', (path) ->
    $scope.activeNavId = path || '/'
  )

  # getClass compares the current url with the id.
  # If the current url starts with the id it returns 'active'
  # otherwise it will return '' an empty string. E.g.
  #
  #   # current url = '/products/1'
  #   getClass('/products') # returns 'active'
  #   getClass('/orders') # returns ''
  #
  $scope.getClass = (id) ->
    if $scope.activeNavId.substring(0, id.length) == id
      $rootScope.pageTitle = "Mochify | " + fcapitaliseFirstLetter(id.slice(1))
      return 'active'
    else
      return ''
])

.controller('DashboardCtrl', [
  '$scope'

($scope) ->
  
])

.controller('ProjectsCtrl', [
  '$scope'
  'store'

($scope, store) ->
  # $scope
  console.log store
  console.log "LOL"
])

.controller('TodoCtrl', [
  '$scope'

($scope) ->

  $scope.todos = [
    text: "learn angular"
    done: true
  ,
    text: "build an angular app"
    done: false
  ]

  $scope.addTodo = ->
    $scope.todos.push
      text: $scope.todoText
      done: false

    $scope.todoText = ""

  $scope.remaining = ->
    count = 0
    angular.forEach $scope.todos, (todo) ->
      count += (if todo.done then 0 else 1)

    count

  $scope.archive = ->
    oldTodos = $scope.todos
    $scope.todos = []
    angular.forEach oldTodos, (todo) ->
      $scope.todos.push todo  unless todo.done

])


fcapitaliseFirstLetter = (string)->
  string.charAt(0).toUpperCase() + string.slice(1)
