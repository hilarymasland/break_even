
"use strict";

(function(){
  angular
  .module("breakEven", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  function RouterFunction($stateProvider){
    $stateProvider
    .state("welcome",{
    url: "/",
    templateUrl: "ngviews/home.html",
    })
      .state("exercises", {
      url: "/exercises",
      templateUrl: "ngviews/exercises.html",
      controller: "ExerciseIndexController",
      controllerAs: "vm"
    })
    // .state("grumbleNew", {
    //   url: "/grumbles/new",
    //   templateUrl: "js/grumbles/new.html",
    //   controller: "GrumbleNewController",
    //   controllerAs: "GrumbleNewViewModel"
    // })
    // .state("grumbleShow", {
    //   url: "/grumbles/:id",
    //   templateUrl: "js/grumbles/show.html",
    //   controller: "GrumbleShowController",
    //   controllerAs: "GrumbleShowViewModel"
    // })
    .state("grumbleEdit", {
      url: "/grumbles/:id/edit",
      templateUrl: "js/grumbles/edit.html",
      controller: "GrumbleEditController",
      controllerAs: "GrumbleEditViewModel"
    })
  } // closes Router Function
}());
