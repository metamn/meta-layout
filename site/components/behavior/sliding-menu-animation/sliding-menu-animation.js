var slidingMenuAnimation = function() {
  var container = document.querySelector('#base-layer');
  var trigger = document.querySelector('#base-layer #footer');
  var backButton = document.querySelector('#base-layer #footer');

  function onViewChange(evt) {
    container.classList.toggle('view-change');
  }

  trigger.addEventListener('click', onViewChange, false);
  backButton.addEventListener('click', onViewChange);
}

slidingMenuAnimation();
