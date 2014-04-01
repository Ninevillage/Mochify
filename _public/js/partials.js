angular.module('partials', [])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/dashboard.html', [
'',
'<div ng-app="ng-app">',
'  <div ng-controller="DashboardCtrl">',
'    <div class="row-fluid">',
'      <div class="span6">',
'        <h2>Changelog</h2>',
'      </div>',
'      <div class="span6">',
'        <h2>News</h2>',
'      </div>',
'    </div>',
'  </div>',
'</div>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/nav.html', [
'',
'<ul class="nav pull-left">',
'  <li ng-class="getClass(\'/dashboard\')"><a ng-href="#/dashboard">Dashboard</a></li>',
'  <li ng-class="getClass(\'/projects\')"><a ng-href="#/projects">Projects</a></li>',
'  <li ng-class="getClass(\'/about\')"><a ng-href="#/about">About</a></li>',
'</ul><!--ul.nav.pull-right',
'<li><a href="#"><i class="icon-remove"></i></a></li>',
'<li><a href="#"><i class="icon"></i></a></li>-->',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/projects.html', [
'',
'<div ng-app="ng-app">',
'  <div ng-controller="ProjectsCtrl">',
'    <div class="row-fluid">',
'      <div class="span12">',
'        <div class="pull-left">',
'          <button class="btn btn-primary"> <i class="icon-plus icon-white"></i> Add Project',
'          </button>',
'        </div>',
'        <form class="form-search pull-right">',
'          <input type="text" class="input-medium search-query">',
'          <button type="submit" class="btn">Search</button>',
'        </form>',
'      </div>',
'    </div>',
'    <div class="row-fluid">',
'      <div class="span12">',
'        <table class="table table-hover table-bordered table-striped">',
'          <thead>',
'            <tr>',
'              <th># </th>',
'              <th>Directory</th>',
'              <th>Tests</th>',
'              <th>successful run</th>',
'            </tr>',
'          </thead>',
'          <tbody>',
'            <tr ng-repeat="project in projects">',
'              <td>{{ project.id }}</td>',
'              <td>{{ project.directory }}</td>',
'              <td>{{ project.tests }}</td>',
'              <td>{{ project.successed }}</td>',
'            </tr>',
'          </tbody>',
'        </table>',
'      </div>',
'    </div>',
'  </div>',
'</div>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/about.html', [
'',
'<h1>About Mochify</h1>',
'<hr>',
'<div ng-controller="AboutCtrl">',
'  <div class="row-fluid">',
'    <div class="span12">',
'      <h4>Contributers',
'        <ul class="thumbnails">',
'          <li ng-repeat="contributer in contributers" class="span4">',
'            <div class="thumbnail text-center"><img ng-src="{{ contributer.img }}" alt="">',
'              <h3>{{ contributer.name }}</h3>',
'              <p>{{ contributer.desc }}</p>',
'            </div>',
'          </li>',
'        </ul>',
'      </h4>',
'    </div>',
'  </div>',
'  <div class="row-fluid">',
'    <div class="span12">',
'      <h4>License</h4>',
'      <div class="well">###<br># Copyright (c) 2014 Ninevillage. <br># All Rights reserverd.<br># <br># This software is the confidential intellectual property of Mohammed Neundorf - Ninevillage;<br># Unauthorized copying of this file, via any medium is strictly prohibited.<br># Proprietary and confidential<br>###<br></div>',
'    </div>',
'  </div>',
'</div>',''].join("\n"));
}]);