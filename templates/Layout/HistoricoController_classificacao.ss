(HISTORICO CONTROLER CLASSIFICACAO)
  <% cached 'database', $LastEdited %>
    <!-- cached $LastEdited -->
        <div class="blog-post">
                <h3 class="blog-post-title">{$Title}</h3>
                <div class="blog-post-header">
                  <div class="blog-post-author"><img class="img-circle" src="$Cronicas.Cronista.ImagemPerfil.Fill(63,63).Link" alt="" width="63" height="63"/>
                    <p class="post-author">$Cronicas.Cronista.FirstName $Cronicas.Cronista.Surname</p>
                  </div>
                  <div class="blog-post-meta">
                    <time class="blog-post-time" datetime="2018"><span class="icon mdi mdi-clock"></span>{$Cronicas.Created.ShortMonth} {$Cronicas.Created.Format('d, Y')}</time>
                   <!-- <div class="blog-post-comment"><span class="icon mdi mdi-comment-outline"></span>345</div>
                    <div class="blog-post-view"><span class="icon fl-justicons-visible6"></span>234</div> -->
                  </div>
                </div>
                <div class="blog-post-content">
                <img src="{$BaseHref}$Cronicas.Imagem.Fill(683,407).Link" alt="" width="683" height="407">
                {$Content.RAW}
                </div>
                <div class="blog-post-share">
                  <p>Partilhar</p>
                  <ul class="group">
                    <li><a class="icon fa-facebook" href="#"></a></li>
                    <li><a class="icon fa-twitter" href="#"></a></li>
                    <li><a class="icon fa-google-plus" href="#"></a></li>
                    <li><a class="icon fa-instagram" href="#"></a></li>
                  </ul>
                </div>
              </div>
<% end_cached %>
