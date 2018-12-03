const show = document.getElementById("show");
const hide = document.getElementById("hide");
const comment = document.getElementById("comment");

document.addEventListener("click", event => {
  show.css("display", "none");
  comment.show();
  hide.show();
}

document.addEventListener("click", event => {
  hide..css("display", "none");
  comment.hide();
  show.show();
}
