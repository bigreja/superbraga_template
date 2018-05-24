<!DOCTYPE html>
<html class="wide wow-animation" lang="pt">
  <head>
    <!-- Site Title-->
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %><% if $PageNumber %> - Página $PageNumber <% end_if %> &raquo; $SiteConfig.Title</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="{$ThemeDir}/images/favicon.png" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Kanit:300,400,500,500i,600%7CRoboto:400,900">
   	<% require themedCSS('bootstrap.min') %>
   	<% require themedCSS('fonts') %>
   	<% require themedCSS('style') %>
 </head>
  <body>
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="{$ThemeDir}/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div id="preloader">
      <div class="preloader-body">
        <div class="preloader-item"></div>
      </div>
    </div>
<!-- Page-->
    <div class="page">
    <% include HeaderHome %>

    <% include NewsHome %>
      <section class="section section-md bg-gray-100">
      <div class="container">
             <div class="row row-50">

            <% include CronicasHome %>

            </div>
        </div>
    </section>

      <section class="section section-sm bg-gray-100">
        <div class="container">
          <div class="row row-50">
            <div class="col-sm-12 col-md-8 col-lg-8">
              <% include ClassificacaoHome %>
              <% include UltimosPosts %>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4">
            <aside class="aside-components">
                    $Form
                <% include Eventos %>
                <% include UltimosResultados %>
                <% include Bragalotto_Normal %>
                <div class="aside-component">
                  <!-- Heading Component-->
                  <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title">Siga-nos
                      </h5>
                    </div>
                  </article>

                  <!-- Buttons Media-->
                  <div class="group-sm group-flex"><a class="button-media button-media-facebook" href="#">
                      <h4 class="button-media-title">50k</h4>
                      <p class="button-media-action">Like<span class="icon material-icons-add_circle_outline icon-sm"></span></p><span class="button-media-icon fa-facebook"></span></a><a class="button-media button-media-twitter" href="#">
                      <h4 class="button-media-title">120k</h4>
                      <p class="button-media-action">Follow<span class="icon material-icons-add_circle_outline icon-sm"></span></p><span class="button-media-icon fa-twitter"></span></a><a class="button-media button-media-google" href="#">
                      <h4 class="button-media-title">15k</h4>
                      <p class="button-media-action">Follow<span class="icon material-icons-add_circle_outline icon-sm"></span></p><span class="button-media-icon fa-google"></span></a><a class="button-media button-media-instagram" href="#">
                      <h4 class="button-media-title">85k</h4>
                      <p class="button-media-action">Follow<span class="icon material-icons-add_circle_outline icon-sm"></span></p><span class="button-media-icon fa-instagram"></span></a></div>
                </div>
              </aside>
            </div>
          </div>
        </div>
      </section>


    <% include Footer %>
    <!-- Javascript-->
	<% require themedJavascript('core.min') %>
	<% require themedJavascript('script') %>
	<% require themedJavascript('bragalotto') %>

  </body>
</html>
