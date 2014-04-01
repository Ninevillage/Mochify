'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/dashboard', {templateUrl: '/partials/dashboard.html'})
    .when('/projects', {templateUrl: '/partials/projects.html'})
    .when('/about', {templateUrl: '/partials/about.html'})

    # Catch all
    .otherwise({redirectTo: '/dashboard'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
