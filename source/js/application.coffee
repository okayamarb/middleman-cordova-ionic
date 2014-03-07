#= require angular/angular
#= require angular-animate/angular-animate
#= require ionic/release/js/ionic
#= require ionic/release/js/ionic.angular
#= require angular-sanitize/angular-sanitize
#= require angular-resource/angular-resource
#= require_self
#= require_tree ./factories/.
#= require_tree ./services/.
#= require_tree ./controllers/.
#= require_tree .

app_name = 'SampleApp'
window.app = angular.module(app_name, ['ionic', 'ngSanitize', 'ngResource', "#{app_name}.controllers"])
window.app.config(
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider.state('top', {
      url: '/',
      templateUrl: 'views/top.html',
      controller: 'TopCtrl'
    })
    $urlRouterProvider.otherwise('/')
)
window.controllers = angular.module("#{app_name}.controllers", [])
ionic.Platform.ready ->
  console.log(ionic.Platform.device().platform)