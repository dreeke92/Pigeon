function initMasonry() {
  // var elem = document.querySelector('.grid');
  // var msnry = new Masonry( elem, {
  //   // options
  //   itemSelector: '.grid-item',
  //   columnWidth: 200,
  //   // percentPosition:true
  // });

  // // element argument can be a selector string
  // //   for an individual element
  // var msnry = new Masonry( '.grid', {
  //   // options
  // });

  // // $('.grid').masonry({
  // //   itemSelector: '.grid-item',
  // //   columnWidth: 160
  // // });

  var $ = require('jquery');
  var jQueryBridget = require('jquery-bridget');
  var Masonry = require('masonry-layout');
  // make Masonry a jQuery plugin
  jQueryBridget( 'masonry', Masonry, $ );
  // now you can use $().masonry()
  $('.grid').masonry({
    itemSelector: '.grid-item',
    // columnWidth: 200,
    percentPosition:true
  });
};

export { initMasonry };
