<% cached 'ListaNoticias', $ListaNoticias.max('LastEdited'), $ListaNoticias.count() %>

<div class="main-component">
    <div class="row row-30">
     <div class="col-lg-12">
     <article class="heading-component">
                <div class="heading-component-inner">
                  <h5 class="heading-component-title">Notícias
                  </h5>
                </div>
              </article>

			<% loop $ListaNoticias %>
             <article class="post-corporate">
                <div class="post-corporate-content">
                  <div class="post-corporate-header">
                    <!-- Badge-->
                    <!-- <div class="badge badge-primary">The League
                    </div> -->
                    <time class="post-corporate-time" datetime="2018">{$Created.ShortMonth} {$Created.Format('d, Y')}</time>
                    <!-- <div class="post-corporate-view"><span class="icon fl-justicons-visible6"> </span>234
                    </div> -->
                  </div>
                  <h4 class="post-corporate-title"><a href="$AbsoluteLink">$Title</a></h4>
                  <div class="post-corporate-text">
                    $Content.FirstParagraph
                  </div>
                </div><a class="post-corporate-figure" href="$AbsoluteLink"><img src="{$BaseHref}$Imagem.Fill(768,414).Link" alt="" width="768" height="414"/></a>
                <div class="post-corporate-footer">
                  <!-- <div class="post-corporate-comment"><span class="icon mdi mdi-comment-outline"></span><a href="#">345 Comments</a></div> -->
                  <div class="post-corporate-share">
                    <ul class="group">
                      <li>Partilhar</li>
                      <li><a class="icon fa-facebook" href="#"></a></li>
                      <li><a class="icon fa-twitter" href="#"></a></li>
                      <li><a class="icon fa-google-plus" href="#"></a></li>
                      <li><a class="icon fa-instagram" href="#"></a></li>
                    </ul>
                  </div>
                </div>
              </article>
                <% end_loop %>
                </div>
                </div>
                </div>

<% if $ListaNoticias.MoreThanOnePage %>
<nav class="pagination-wrap" aria-label="Page navigation">
            <ul class="pagination">
              <% loop $ListaNoticias.Pages %>
              <li class="page-item <% if $CurrentBool %> c-active <% end_if %>"><a class="page-link" href="{$BaseHref}$Link">$PageNum</a></li>
              <% end_loop %>
            </ul>
          </nav>
<% end_if %>
<% end_cached %>
