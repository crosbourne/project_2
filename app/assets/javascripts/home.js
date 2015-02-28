
  $(document).ready(function(){
    $('#nav-icon').on('click', function(e){
      e.preventDefault();
      $('body > header > nav > ul > li').slideToggle();
      console.log("working");
    });
  });


  // $(function(){
  //   $("#invite_fb_friends").click(function(){
  //     FB.init({
  //       appId:  'ENV[FBAccessKeyId1]',
  //       cookie: false,
  //       status: true
  //     });
  //     FB.ui({ method: 'apprequests', message: '<%= current_user %> thinks you are really awesome'});
  //   });
  // });
