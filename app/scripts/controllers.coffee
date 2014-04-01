###
# Copyright (c) 2014 Mohammed Neundorf - Ninevillage. 
# All Rights reserverd.
# 
# This software is the confidential intellectual property of Mohammed Neundorf - Ninevillage;
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential
# Written by Mohammed Neundorf - Ninevillage <info@ninevillage.com>
###

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
  # Dummy
  $scope.projects = []
  for x in [1..10]
    $scope.projects.push 
      id: x
      directory: '/Users/Mochify/Desktop/Project'+x
      tests: Math.floor((Math.random()*100)+1)
      successed: Math.floor((Math.random()*1000)+1)
])

.controller('AboutCtrl', [
  '$scope'

($scope) ->
  $scope.contributers = []
  $scope.contributers.push
    img: 'http://www.gravatar.com/avatar/' + CryptoJS.MD5('matt@nax.me') + '?s=200'
    name: 'Matt aka Naxmeify'
    desc: 'Owner of Ninevillage'
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
