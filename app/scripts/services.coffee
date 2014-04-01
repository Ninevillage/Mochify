'use strict'

### Sevices ###

angular.module('app.services', [])

.factory 'version', -> 
  require('nw.gui').App.manifest.version

.service 'store', -> 
  database = DataStore.create 'simple'
