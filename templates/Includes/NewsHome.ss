 <!-- Slick Carousel-->
      <div class="slick-slider-classic">
        <div class="slick-slider carousel-parent" data-arrows="false" data-autoplay="true" data-autoplay-speed="4000" data-loop="true" data-dots="true" data-swipe="false" data-items="1" data-fade="true" data-child="#child-carousel" data-for="#child-carousel">
<% loop NoticiasHome %>
          <div class="item bg-gray-2" style="background-image: url({$BaseDir}{$BaseHref}$Imagem.FillMax(1920,670).Link);"  style="height=670px;">
            <div class="container">
              <!-- Post Elizabeth-->
              <article class="post-elizabeth">
                <!-- Badge-->
                <!-- <div class="badge badge-east-bay">The Team
                </div> -->
                <h2 class="post-elizabeth-title"><a href="$Link">{$Title}</a></h2>
                <div class="post-elizabeth-text">
                  <p>$Content.FirstParagraph</p>
                </div>
                <!-- <div class="post-elizabeth-meta">
                  <div class="post-elizabeth-time"><span class="icon mdi mdi-clock"></span>
                    <time datetime="2018">April 15, 2018</time>
                  </div>
                  <div class="post-elizabeth-comment"><span class="icon mdi mdi-comment-outline"></span><a href="#">345</a></div>
                  <div class="post-elizabeth-view"><span class="icon fl-justicons-visible6"></span>234
                  </div>
                </div> -->
                <a class="button button-gray-outline" href="$Link">Ler</a>
              </article>
            </div>
          </div>
<% end_loop %>
        </div>
        <div  class="slick-slider carousel-child" id="child-carousel" data-for=".carousel-parent" data-arrows="true" data-loop="true" data-autoplay="true" data-autoplay-speed="4000" data-dots="false" data-swipe="false" data-items="1" data-xs-items="2" data-sm-items="3" data-md-items="3" data-lg-items="4" data-xl-items="4" data-slide-to-scroll="1">
<% loop NoticiasHome %>
          <div class="item">
            <article class="post-light">
              <h6 class="post-light-title">{$Title} {$SubTitle} </h6>
              <time class="post-light-time" datetime="2018">{$Created.ShortMonth} {$Created.Format('d, Y')}</time>
            </article>
          </div>
<% end_loop %>
        </div>
      </div>

