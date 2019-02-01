function initMasonry() {
  var elem = document.querySelector('.grid');
  var msnry = new Masonry( elem, {
    // options
    itemSelector: '.grid-item',
    columnWidth: 200,
    // percentPosition:true
  });

  // element argument can be a selector string
  //   for an individual element
  var msnry = new Masonry( '.grid', {
    // options
  });

  // $('.grid').masonry({
  //   itemSelector: '.grid-item',
  //   columnWidth: 160
  // });
};

export { initMasonry };
