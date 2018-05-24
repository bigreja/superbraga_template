<% cached 'ListaCronicas', $ListaCronicas.max('LastEdited'), $ListaCronicas.count() %>
<div class="main-component">
    <div class="row row-30">
			<% loop $ListaCronicas %>
            <div class="col-md-6">
			    <article class="post-carmen"><img src="{$BaseHref}$Imagem.Fill(369,343).Link" alt="" width="369" height="343"/>
                  <div class="post-carmen-header">
                    <!-- Badge-->
                    <div class="badge badge-primary">{$Cronista.FirstName} {$Cronista.Surname}</div>
                  </div>
                  <div class="post-carmen-main">
                    <h4 class="post-carmen-title"><a href="$AbsoluteLink">$Title</a></h4>
                    <div class="post-carmen-meta">
                      <div class="post-carmen-time"><span class="icon mdi mdi-clock"></span>
                        <time datetime="2018">{$Created.ShortMonth} {$Created.Format('d, Y')}</time>
                      </div>
                    </div>
                  </div>
                </article>
                </div>
                <% end_loop %>
                </div>
                </div>

<% if $ListaCronicas.MoreThanOnePage %>
<nav class="pagination-wrap" aria-label="Page navigation">
            <ul class="pagination">
              <% loop $ListaCronicas.Pages %>
              <li class="page-item <% if $CurrentBool %> c-active <% end_if %>"><a class="page-link" href="{$BaseHref}$Link">$PageNum</a></li>
              <% end_loop %>
            </ul>
          </nav>
<% end_if %>

<!--    <div class="team-boxed">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Team </h2>
                <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae.</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/1.jpg">
                        <h3 class="name">Ben Johnson</h3>
                        <p class="title">Musician</p>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                        <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/2.jpg">
                        <h3 class="name">Emily Clark</h3>
                        <p class="title">Artist</p>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                        <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box"><img class="rounded-circle" src="assets/img/3.jpg">
                        <h3 class="name">Carl Kent</h3>
                        <p class="title">Stylist</p>
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                        <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
-->
<% end_cached %>
