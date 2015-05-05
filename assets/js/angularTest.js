function OnDragStart(ev, elem) {

  ev.dataTransfer.setData("position", $(ev.target).data('position'));
}

function allowDrop(ev) {
    ev.preventDefault();
}

function drop(ev) {
  ev.preventDefault();
  var to = $(ev.target).data('position');
  var from = ev.dataTransfer.getData('position');

  swapItems(to, from)

}

$('#dropzone').css({
  display: 'block',
  width: '100px',
  height: '100px',
  backgroundColor: 'grey'  
});

function swapItems(to, from) {
  var listItems = $('li[data-position]');
  var SrcElem = $('li[data-position=' + from + ']');
  var TargetElem = $('li[data-position=' + to + ']');
  console.log($(SrcElem));
  console.log($(TargetElem));
}