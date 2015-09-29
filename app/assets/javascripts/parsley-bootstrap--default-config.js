(function(window) {
  'use strict';
  window.ParsleyConfig = window.ParsleyConfig || {};
  window.ParsleyConfig = $.extend(window.ParsleyConfig || {}, {
    errorClass: 'has-error',
    successClass: 'has-success',
    errorsWrapper: '<div class="help-block parsley-errors-list"></div>',
    errorTemplate: '<div class="parsley-error-item"></div>',
    classHandler: function ( ParsleyField ) {
      return ParsleyField.$element.closest('.form-group');
    },
  });
})(window);
