<% cached 'ListaCronicasHome', $CronicasHome.max('LastEdited'), $CronicasHome.count() %>
<% if  CronicasHome.Count !=0 %>
<div class="col-md-12 owl-carousel-outer-navigation">
              <!-- Heading Component-->
              <article class="heading-component">
                <div class="heading-component-inner">
                  <h5 class="heading-component-title">Ultimas Crónicas
                  </h5>
                  <div class="owl-carousel-arrows-outline">
                    <div class="owl-nav">
                      <button class="owl-arrow owl-arrow-prev"></button>
                      <button class="owl-arrow owl-arrow-next"></button>
                    </div>
                  </div>
                </div>
              </article>

              <!-- Owl Carousel-->
              <div class="owl-carousel" data-items="1" data-md-items="2" data-lg-items="3" data-autoplay="true" data-autoplay-speed="6500" data-dots="false" data-nav="true" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="false" data-nav-custom=".owl-carousel-outer-navigation">
                <!-- Post cronicas-->
                <% loop CronicasHome %>
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
                <% end_loop %>
              </div>
            </div>
<% end_if %>
<% end_cached %>
