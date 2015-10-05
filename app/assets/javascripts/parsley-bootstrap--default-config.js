(function(window) {
  'use strict';
  window.ParsleyConfig = window.ParsleyConfig || {};
  window.ParsleyConfig = $.extend(window.ParsleyConfig || {}, {
    errorClass: 'has-error',
    excluded: 'input[type=button], input[type=submit], input[type=reset], input[type=hidden], textarea',
    successClass: 'has-success',
    errorsWrapper: '<div class="parsley-error-item"></div>',
    errorTemplate: '<div class="parsley-error-item"></div>',
    classHandler: function ( ParsleyField ) {
      return ParsleyField.$element.closest('.form-group');
    },
  });
})(window);
