window.onload = function() {

  var next_button = document.getElementById("next_button");
  console.log(next_button);
  next_button.addEventListener("click", getNextSlide);
  
  // var form = document.getElementById("demo");
  // form.addEventListener('submit', returnSingleStudent);

  function getNextSlide(e) {
    e.preventDefault();
    var js_req = new XMLHttpRequest;
    js_req.addEventListener("load", function(e) {
            var response = JSON.parse(js_req.response);
            var string = "Title: " + response.title + ", Body: " + response.body;
            var a = document.getElementsByClassName("ubae");
            a[0].innerHTML = string;
          });
    js_req.open("get", "http://localhost:4567/1" );
    js_req.send();
  }
}

function myFunction() {
  var greeting;
  var time = new Date().getHours();
  if (time < 10) {
    greeting = "good morning";
  } else if (time < 20) {
  greeting = "good day";
  } else {
  greeting = "good evening";
  }
document.getElementById("demo").innerHTML = greeting;
}

