// var men2 = [];

function getData(callback){
  $.ajax({
    url: 'https://randomuser.me/api/?gender=male&results=10',
    dataType: 'json',
    success: function(data){
      callback(data);
    }
  });

};

getData(function(men){
  console.log("the output is: " + men.results);
  for (var i = 0, len = men.results.length; i< len; i++){
    console.log("gender is: "+ men.results[i].gender);
  }
});






// getData( function (data) { 
//   console.log("The data is: " + data); 
// });

// function getData(callback) { 
//   $.get("example.php", function(response) { 
//     callback(response); 
//   }); 
// }



// ====================

// function testAjax(handleData) {
//   $.ajax({
//     url:"getvalue.php",  
//     success:function(data) {
//       handleData(data); 
//     }
//   });
// }

// testAjax(function(output){
//   // here you use the output
// });



// console.log("before");
// console.log(men);
// console.log("after");


// men.results.forEach(function(element){
//   console.log("gender is: " + element.gender);
// });

// var menResults = men.results;

// for (var i = 0, len = men.results.length; i < len; i++) {
//   console.log("gender is: " );
// }