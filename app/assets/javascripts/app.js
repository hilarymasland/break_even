
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
    // .state("Welcome", {
    //   url: "",
    //   templateUrl: "js/welcome.html"
    // })
    .state("exercises", {
      url: "/exercises",
      templateUrl: "ngviews/bob.html",
      controller: "ExercisesIndexController",
      controllerAs: "vm"
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
