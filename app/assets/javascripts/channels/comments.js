App.messages = App.cable.subscriptions.create('CommentsChannel', {  
    received: function(data) {
      console.log("ahsan saeed")
      return $('.comments_section').append(this.renderComment(data));
    },
  
    renderComment: function(data) {
      return `<div class='panel panel-success'> <div class='panel-heading'> <strong><span class='glyphicon glyphicon-user'></span> ${data.comment.name} </strong> <span class='pull-right'><small>- ${data.comment.updated_at} ago</small></span> </div> <div class='panel-body'> ${data.comment.message} </div> </div>`
    }
  });

  // $(document).on('turbolinks:load', function() {
  //   $("#new_comment").on("submit", function(e) {
  //     e.preventDefault();
  //   });
  // });