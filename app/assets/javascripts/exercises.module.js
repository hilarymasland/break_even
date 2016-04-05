// = require angular
// = require angular-resource

"use strict";

(function (){
  angular
  .module("days", [
    "ngResource"
  ])
  .controller("days_controller", [
    "$resource",
    DaysController
  ]);

function DaysController($resource){
  var vm = this
  vm.data = data;
  var Exercise = $resource("/exercises/:id.json", {}, {
    update: {method: "PUT"}
  });
  vm.data = Exercise.query(function(response){
  vm.data.forEach(function(exercise){
    exercise.show = parseFloat(exercise.show);
  });
});
//up above- code to make product cost show in inventory tracker - hopefully can be similar to displaying exercises HDM
  vm.sort_data_by = function(name){
    vm.sort_on = name;
    vm.is_descending = !(vm.is_descending);
  }
}

})();
// switch module "exercise" to "days" - not sure if that was correct HDM
