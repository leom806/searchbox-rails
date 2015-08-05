//= require jquery

$(document).ready(function() {
  $(document).on('searchbox:load', function() {
    $('.searchbox').each(function() {
      var $searchbox = $(this);
      var $form = $(this).find('.searchbox__form')
      var $advancedSearch = $searchbox.find('.searchbox__advanced-search');
      var $filterIcon = $searchbox.find('.searchbox__action-filter');
      var $submit = $searchbox.find('.searchbox__submit')
      var $fields = $searchbox.find('.searchbox__input')
      var $q = $searchbox.find('.searchbox__q')

      $filterIcon.click(function() {
        $advancedSearch.slideToggle(50);
      })

      $submit.click(function(e) {
        e.preventDefault();
        $q.val([serializeFields($fields), $q.data('fulltext')].join(" "));
        $form.submit();
      })

      function serializeFields($fields) {
        return $fields.map(function() {
          var $field = $(this);
          if($field.prop('type') == 'checkbox') {
            if($field.is(':checked')) {
              return $field.prop('name') + ':' + $field.val();
            }
          } else {
            if($field.val().trim().length > 0) {
              return $field.prop('name') + ':"' + $field.val() + '"';
            }
          }
        }).get().join(" ");
      }
    })
  })

  $(document).trigger('searchbox:load');
})
