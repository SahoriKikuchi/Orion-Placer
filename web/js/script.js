<!--Filtro por categorias-->

$('.filter-btn').on('click', function() {

    let type = $(this).attr('id');
    let boxes = $('.box');

    $('.filter-btn').removeClass('active');
    $(this).addClass('active');

    if(type == 'pub-btn') {
      eachBoxes('pub', boxes);
    } else if(type == 'restaurant-btn') {
      eachBoxes('restaurant', boxes);
    } else if(type == 'activity-btn') {
      eachBoxes('activity', boxes);
    } else if(type == 'party-btn') {
      eachBoxes('pary', boxes);
    } else if(type == 'event-btn') {
      eachBoxes('event', boxes);
    } else {
      eachBoxes('all', boxes);
    }
    
  });

  function eachBoxes(type, boxes) {

    if(type == 'all') {
      $(boxes).fadeIn();
    } else {
      $(boxes).each(function() {
        if(!$(this).hasClass(type)) {
          $(this).fadeOut('slow');
        } else {
          $(this).fadeIn();
        }
      });
    }
  }
