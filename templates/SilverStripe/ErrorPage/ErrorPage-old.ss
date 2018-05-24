<!DOCTYPE html>
<html lang="en">
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-117296221-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-117296221-1');
</script>

  <!-- SITE TITTLE -->
 	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- PLUGINS CSS STYLE -->
	<% require themedCSS('style') %>
	<% require themedCSS('adaavv_icons') %>

  <!-- GOOGLE FONT -->
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
  <link href="https://fonts.googleapis.com/css?family=Bubbler+One" rel="stylesheet">


  <!-- Icons -->
  <link rel="shortcut icon" href="{$ThemeDir}/images/favicon.png">
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

 <body class="one-screen-page" style="background-image: url('{$ThemeDir}/images/bg-image-1.jpg')">
    <!-- Page-->
    <div class="page">
      <div class="page-loader">
        <div class="brand-name"><img src="{$ThemeDir}/images/adaavv.png" alt="" width="176" height="45"/>
        </div>
        <div class="page-loader-body">
          <div class="cssload-jumping"><span></span><span></span><span></span><span></span><span></span></div>
        </div>
      </div>
      <div class="one-screen-page-inner">
        <!-- Page Header-->
        <header class="header-base-transparent">
          <div class="shell">
            <div class="brand brand-sm"><a href="index.html"><img src="{$ThemeDir}/images/adaavv.png" alt="" width="153" height="40"/></a></div>
          </div>
        </header>
        <!-- Page Content-->
        <section class="one-screen-page-content">
			<% if ErrorCode = '404' %>
          <div class="shell">
            <h1>404</h1>
            <h2>página não encontrada</h2>
            <p class="text-width-smaller block-centered">A pagina que tentou aceder não existe.</p>
            <div class="group-sm group-middle"><a class="btn btn-primary btn-effect-anis" href="{$BaseURL}">Voltar à página inicial</a></div>
          </div>
				<% end_if %>
        </section>

        <!-- Page Footer-->
        <footer class="page-footer-base-transparent">
          <div class="shell">
            <p class="rights">ADAAVV &nbsp;&copy;&nbsp;<span id="copyright-year"></span>&nbsp;<br class="veil-sm">
            </p>
          </div>
        </footer>
      </div>
    </div>


    <% require themedJavascript('core.min') %>
    <% require themedJavascript('script') %>


</body>
</html>

