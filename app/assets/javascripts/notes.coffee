ready = ->
  $('.tag-input').autocomplete
    source: '/tags.json'

$(document).on('turbolinks:load', ready)