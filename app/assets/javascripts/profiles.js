jQuery(function($){
  $('.tab__top').click(function(){
    $('.tab__top.is-active__top').removeClass('is-active__top');
    $(this).addClass('is-active__top');
    $(".content__top.is-show__top").removeClass('is-show__top');
    const index = $(this).index();
    $(".content__top").eq(index).addClass('is-show__top');
  });
});

jQuery(function($){
  $('.tab__bottom').click(function(){
    $('.tab__bottom.is-active__bottom').removeClass('is-active__bottom');
    $(this).addClass('is-active__bottom');
    $(".content__bottom.is-show__bottom").removeClass('is-show__bottom');
    const index = $(this).index();
    $(".content__bottom").eq(index).addClass('is-show__bottom');
  });
});

jQuery(function($){
  $('.select').mouseover(function(){
    $(this).css('background-color','#f8f8ff');
  })
  .mouseout(function(){
    $(this).css('background-color','#fff');
  })
});
