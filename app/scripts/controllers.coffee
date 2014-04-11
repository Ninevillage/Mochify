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
###################################################
###################################################
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
###################################################
###################################################
.controller('DashboardCtrl', [
  '$scope'

($scope) ->
  
])
###################################################
###################################################
.controller('SettingsCtrl', [
  '$scope'

($scope) ->
  $('#settings-tab a').click (e)->
    e.preventDefault()
    $(this).tab('show')
])
###################################################
###################################################
.controller('ProjectsCtrl', [
  '$location'
  '$scope'
  'store'

($location, $scope, store) ->
  # $scope
  # Dummy
  $scope.projects = []
  for x in [1..10]
    $scope.projects.push 
      id: x
      directory: '/Users/Mochify/Desktop/Project'+x
      tests: Math.floor((Math.random()*100)+1)
      successed: Math.floor((Math.random()*1000)+1)

  $scope.open = (id)->
    console.log id
    $location.path '/projects/'+id

])
###################################################
###################################################
.controller('ProjectCtrl', [
  '$routeParams'
  '$scope'

($routeParams, $scope) ->
  $scope.project = 
    id: $routeParams.id
    name: 'Bla'
    directory: '/Users/Mochify/Project' + $routeParams.id
    tests: Math.floor((Math.random()*1000)+1)
    successed: Math.floor((Math.random()*1000)+1)
  $scope.files = []
  $scope.files.push
    name: "mocha.test1.js"
    tested: false
  $scope.files.push
    name: "mocha.test2.js"
    tested: false
  $scope.files.push
    name: "mocha.test3.js"
    tested: false
])
###################################################
###################################################
.controller('AboutCtrl', [
  '$scope'

($scope) ->
  manifest = require('nw.gui').App.manifest
  $scope.infos = {}
  $scope.infos.name = manifest.name
  $scope.infos.version = manifest.version
  $scope.dependencies = manifest.dependencies
])
###################################################
###################################################
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
