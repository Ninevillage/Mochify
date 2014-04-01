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
'</ul>',
'<ul class="nav pull-right">',
'  <li><a href="#"><i class="icon-remove"></i></a></li>',
'  <li><a href="#"><i class="icon"></i></a></li>',
'</ul>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/partial1.html', [
'',
'<p>This is the partial for view 1.</p>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/partial2.html', [
'',
'<p>This is the partial for view 2.</p>',
'<p>',
'  Showing of \'interpolate\' filter:',
'  {{ \'Current version is v%VERSION%.\' | interpolate }}',
'</p>',''].join("\n"));
}])
.run(['$templateCache', function($templateCache) {
  return $templateCache.put('/partials/todo.html', [
'',
'<div ng-app="ng-app">',
'  <h2>Todo</h2>',
'  <div ng-controller="TodoCtrl"><span>{{remaining()}} of {{todos.length}} remaining</span> [<a href="" ng-click="archive()">archive</a>]',
'    <ul class="unstyled">',
'      <li ng-repeat="todo in todos">',
'        <label class="checkbox inline">',
'          <input type="checkbox" ng-model="todo.done"><span class="done{{todo.done}}">{{todo.text}}</span>',
'        </label>',
'      </li>',
'    </ul>',
'    <form ng-submit="addTodo()" class="form-inline">',
'      <p>',
'        <input type="text" ng-model="todoText" size="30" placeholder="add new todo here">',
'        <input type="submit" value="add" class="btn btn-primary">',
'      </p>',
'    </form>',
'  </div>',
'</div>',''].join("\n"));
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
}]);