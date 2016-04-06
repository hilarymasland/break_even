
"use strict";

(function(){
  angular
  .module("breakEven", [
    "ui.router",
    "ngResource",
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  function RouterFunction($stateProvider){
    $stateProvider
    .state("welcome", {
      url: "/"
    })
      .state("exerciseIndex", {
      url: "/exercises",
      templateUrl: "js/grumbles/index.html",
      controller: "GrumbleIndexController",
      controllerAs: "GrumbleIndexViewModel"
    })
    .state("grumbleNew", {
      url: "/grumbles/new",
      templateUrl: "js/grumbles/new.html",
      controller: "GrumbleNewController",
      controllerAs: "GrumbleNewViewModel"
    })
    .state("grumbleShow", {
      url: "/grumbles/:id",
      templateUrl: "js/grumbles/show.html",
      controller: "GrumbleShowController",
      controllerAs: "GrumbleShowViewModel"
    })
    .state("grumbleEdit", {
      url: "/grumbles/:id/edit",
      templateUrl: "js/grumbles/edit.html",
      controller: "GrumbleEditController",
      controllerAs: "GrumbleEditViewModel"
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
