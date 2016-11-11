# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
received: function() {
  // Called when there's incoming data on the websocket for this channel
  $(".alert.alert-info").show();
}