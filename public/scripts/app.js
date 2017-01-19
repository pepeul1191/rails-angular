'use strict';

var app = angular.module("myAngularRailsApp", ['ngRoute', 'oc.lazyLoad']);

app.config(function($routeProvider){
    $routeProvider.
	    when('/notas', { 
	        templateUrl: 'views/nota/index.html' ,
	    }).
	    when('/usuarios', { 
	        templateUrl: 'views/usuario/index.html' //,controller: 'IndexNoteCtrl'
	    })
});