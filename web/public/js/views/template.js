(function() {

  define(function(require) {
    var $, Marionette;
    $ = require('jquery');
    Marionette = require('marionette');
    return Marionette.ItemView.extend({
      template: require('templates/template')
    });
  });

}).call(this);
