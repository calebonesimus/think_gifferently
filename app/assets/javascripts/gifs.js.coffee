jQuery ->
  $(window).scroll ->
    url = $('.pagination .next_page').attr('href')
    if url && $(window).scrollTop() > $(document).height() - $(window).height() - 80
      $('.pagination').text("Loading more gifs...")
      $.getScript(url)
