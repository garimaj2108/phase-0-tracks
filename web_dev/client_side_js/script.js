console.log("The script is running!");

function addImage(event) {
  console.log("I clicked!");
  console.log(event);
  event.target.src ="https://s-media-cache-ak0.pinimg.com/originals/5d/22/f5/5d22f59d964c393135f69ae62a4964a9.jpg"
  event.target.style.border="10px solid green";
}

var headEr = document.getElementById("kitten-photo")
headEr.addEventListener("click", addImage);