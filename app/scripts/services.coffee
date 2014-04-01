'use strict'

### Sevices ###

angular.module('app.services', [])

.factory 'version', -> require('nw.gui').App.manifest.version
