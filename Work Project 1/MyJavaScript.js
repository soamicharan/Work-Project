function changeBGcolor(element){
  var r=Math.floor(Math.random()*256);
  var g=Math.floor(Math.random()*256);
  var b=Math.floor(Math.random()*256);
  var col='rgb('+r+','+g+','+b+')';
  element.style.backgroundColor=col;
}
