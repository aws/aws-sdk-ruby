function activateTab($li) {
  $li.addClass('active')
  $li.siblings('li').removeClass('active');
  $li.parents('.tab-box').find('.tab-contents').hide();
  $('#' + $li.attr('data-tab-id')).show();
}

function setupTabBoxes() {

  $('div.tab-box .tabs li:first-child').each(function(n, li) {
    activateTab($(li));
  });

  $('div.tab-box .tabs li').click(function(e) {
    activateTab($(e.target));
  });
}

$(document).ready(function() {
  setupTabBoxes();
});
