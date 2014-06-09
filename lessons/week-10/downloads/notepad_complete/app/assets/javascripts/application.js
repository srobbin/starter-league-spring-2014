// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require angular
//= require angular-route
//= require angular-resource
//= require angular-animate
//= require turbolinks
//= require_tree .

var notes = angular.module('notes', ['ngRoute', 'ngResource', 'ngAnimate']);
var pusher = new Pusher('7328b9228bd78419d522');
var channel = pusher.subscribe('notes_channel');

notes.config(function($httpProvider, $routeProvider) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name=csrf-token]').content

  $routeProvider
    .when('/', {
      templateUrl: '/assets/all.html',
      controller: 'AllCtrl'
    })
    .when('/note/:noteId', {
      templateUrl: '/assets/note.html',
      controller: 'NoteCtrl'
    })
    .otherwise({
      redirectTo: '/'
    });
});

notes.factory('Notes', function($resource) {
  return $resource('/notes/:id.json', {id: '@id'});
});

notes.controller('AllCtrl', function ($scope, Notes) {
  $scope.notes = Notes.query();
  $scope.numNewNotes = 0;

  channel.bind('new_note', function(note) {
    $scope.notes.push(note);
    $scope.$apply();
  });

  $scope.createNewNote = function(e) {
    e.preventDefault();
    $scope.formSubmitted = true;
    Notes.save($scope.newNote, function (results) {
      $scope.newNote = {};
    });
  };
});

notes.controller('NoteCtrl', function ($scope, $routeParams, Notes) {
  $scope.note = Notes.get({id: $routeParams.noteId });
});
