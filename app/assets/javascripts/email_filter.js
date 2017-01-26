(function($,undefined) {

  function onFindReception(e, data, status, xhr) {
    var html;

    if (typeof data.error !== 'undefined') {
      html = ['<span>', data.error, '</span>'].join('');
    } else {
      html = $("<ul></ul>");
      for (var i=0; i < data.length; i++) {
        var li = $("<li></li>");
        li.append([
          "<span>", data[i].id, "</span>", 
          "<span>", data[i].created_at, "</span>",
          "<span>", data[i].status, "</span>",
          "<span>", data[i].no_of_labwares_required, "</span>"
          ].join(''));
        html.append(li);
      }
    }

    $('.claiming-display .submissionsList').html(html);
  }

  $(document).ready(function() {
    $('.claiming-display .email-input form').on('ajax:success', onFindReception);
  });
  
}(jQuery))
