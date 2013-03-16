(function() {

  define(function(require) {
    var Backbone;
    Backbone = require('backbone');
    return Backbone.Model.extend({
      urlRoot: '/todos/'
    });
  });

}).call(this);
