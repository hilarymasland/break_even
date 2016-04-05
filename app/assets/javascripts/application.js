// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require bootstrap-sprockets
//= require jquery
//= require cocoon
//= require jquery_ujs
//= require turbolinks
//= require angular
//= require angular-resource
"use strict";

(function(){
  angular
  .module("breakEven", [
    "ui.Router",
    "ngResource",
    "exercises"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  function RouterFunction($stateProvider){
    $stateProvider
    .state("Welcome", {
      url: "",
      templateUrl: "js/welcome.html"
    })
    .state("exercises", {
      url: "/exercises",
      templateUrl: "js/exercises/index.html",
      controller: "ExercisesIndexController",
      controllerAs: "ExercisesIndexViewModel"
    })
  } // closes Router Function
}());
// .controller("break_even_controller", BreakEvenController);

// function BreakEvenController(){
//   var vm = this;
//   vm.data = data;
//   vm.total_value = function(){
//     var total = 0;
//     vm.data.forEach(function(product){
//       if(product.quantity){
//         total += (product.quantity * product.cost);
//       }
//     });
//     return total.toFixed(2);
//   }
// }
// })();
