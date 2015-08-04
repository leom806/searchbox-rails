$(document).ready(function() {
  $(document).on('waldo:load', function() {
    $('.waldo').each(function() {
      var $waldo = $(this);
      var $form = $(this).find('.waldo__form')
      var $advancedSearch = $waldo.find('.waldo__advanced-search');
      var $filterIcon = $waldo.find('.waldo__action-filter');
      var $fulltextInput = $waldo.find('.waldo__fulltext-input input')
      var $submit = $waldo.find('.waldo__submit')
      var $fields = $waldo.find('.waldo__input')
      var $q = $waldo.find('.waldo__q')

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

  $(document).trigger('waldo:load');
})
