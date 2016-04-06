"use strict";

(function()({
  angular
  .module("breakEven")
  .factory("DayFactory", [
    DayFactoryFunction
  ])
})();

function DayFactoryFunction(){
  return {
    helloWorld: function(){
      console.log("hello world!");
    }
  }
}
