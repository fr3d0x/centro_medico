$ ->
  $('#patients_search input').keyup ->
    $.get @action, $("#patients_search").serialize(), null, 'script'
    false
  return