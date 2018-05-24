<% if IsForumLogged %>
<% loop BragalottoHome %>
 <div class="aside-component">

                <div class=" owl-carousel-outer-navigation">
                  <!-- Heading Component-->
                  <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title">{$Title}
                      </h5>
                      <% if JornadasActivas.Count != 0 %>
                      <div class="owl-carousel-arrows-outline">
                       <div class="owl-nav">
                          <button class="owl-arrow owl-arrow-prev"></button>
                          <button class="owl-arrow owl-arrow-next"></button>
                        </div>
                      </div>
                      <% end_if %>
                    </div>
                  </article>

                  <!-- Owl Carousel-->
                   <% if JornadasActivas.Count != 0 %>
                  <div class="owl-carousel" data-items="1" data-dots="false" data-nav="true" data-stage-padding="0" data-loop="false" data-margin="0" data-mouse-drag="false" data-nav-custom=".owl-carousel-outer-navigation">
                    <% loop JornadasActivas.Limit(3) %>
                    <article class="aposta-bragalotto aposta-bragalotto-modern">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title"> {$Title}
	                 </h5></div>
             <form class="form-inline bragalotto" role="form" name="jornada_$ID" id="jornada_$ID" action="/bragalottoajax/aposta/$ID" method="post" >
                     <% loop $Jogos($DataJogos) %>
                        <div class="aposta-bragalotto-main">
                  <div class="aposta-bragalotto-team aposta-bragalotto-team-first aposta-bragalotto-team-win">
                    <div class="aposta-bragalotto-team-name">{$HomeTeamName}</div>
                  </div>
                  <div class="aposta-bragalotto-score-wrap">
                    <div class="aposta-bragalotto-score"><input type="number" id="jogo_$ID[]" name="jogo_$ID[]" min="0" max="99" step="1" pattern="[0-9]*"  value="$ApostaUtilizador.HomeTeamScore" /></div>
                    <div class="aposta-bragalotto-score-divider">
                      <svg x="0px" y="0px" width="7px" height="21px" viewBox="0 0 7 21" enable-background="new 0 0 7 21" xml:space="preserve">
                        <g>
                          <circle cx="3.5" cy="3.5" r="3"></circle>
                          <path d="M3.5,1C4.879,1,6,2.122,6,3.5S4.879,6,3.5,6S1,4.878,1,3.5S2.122,1,3.5,1 M3.5,0C1.567,0,0,1.567,0,3.5S1.567,7,3.5,7      S7,5.433,7,3.5S5.433,0,3.5,0L3.5,0z"></path>
                        </g>
                        <g>
                          <circle cx="3.695" cy="17.5" r="3"></circle>
                          <path d="M3.695,15c1.378,0,2.5,1.122,2.5,2.5S5.073,20,3.695,20s-2.5-1.122-2.5-2.5S2.316,15,3.695,15 M3.695,14      c-1.933,0-3.5,1.567-3.5,3.5s1.567,3.5,3.5,3.5s3.5-1.567,3.5-3.5S5.628,14,3.695,14L3.695,14z"></path>
                        </g>
                      </svg>
                    </div>
                    <div class="aposta-bragalotto-score"><input type="number" id="jogo_$ID[]" name="jogo_$ID[]"  min="0" max="99" step="1" pattern="[0-9]*" value="$ApostaUtilizador.AwayTeamScore" /></div>
                  </div>
                  <div class="aposta-bragalotto-team aposta-bragalotto-team-second">
                    <div class="aposta-bragalotto-team-name">{$AwayTeamName}</div>
                  </div>
                </div>
                        <% end_loop %>
                    <input type="hidden" name="jornada" value="$NumJornada" />
                    <button type="submit" id="bragalotto" class="col-lg-12 button button-xs button-primary-outline"  >Apostar</button>
                    </form>
                     </article>
                    <% end_loop %>
                  </div>
                  <% else %>
                                                  <div class="comment-modern">
                                      <svg version="1.1" x="0px" y="0px" width="6.888px" height="4.68px" viewBox="0 0 6.888 4.68" enable-background="new 0 0 6.888 4.68" xml:space="preserve">
                                        <path fill="#171617" d="M1.584,0h1.8L2.112,4.68H0L1.584,0z M5.112,0h1.776L5.64,4.68H3.528L5.112,0z"></path>
                                      </svg>
                                      <p class="comment-modern-title"><span class="text-primary">Sem Jornadas</span> activas, talvez tenha terminado a época!</p>
                                      </div>

                  <% end_if %>
                  </div>
 </div>
 <% end_loop %>

<% else %>
 <div class="aside-component">


                  <!-- Heading Component-->
                  <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title">Bragalotto
                      </h5>

                    </div>
                  </article>
                                <div class="comment-modern">
                                      <svg version="1.1" x="0px" y="0px" width="6.888px" height="4.68px" viewBox="0 0 6.888 4.68" enable-background="new 0 0 6.888 4.68" xml:space="preserve">
                                        <path fill="#171617" d="M1.584,0h1.8L2.112,4.68H0L1.584,0z M5.112,0h1.776L5.64,4.68H3.528L5.112,0z"></path>
                                      </svg>
                                      <p class="comment-modern-title"><span class="text-primary">Para apostar</span> tem que efectuar o <a href="/forum/index.php?action=login">login</a> ou <a href="/forum/index.php?action=register">registo</a> no forum</p>
                                      </div>
</div>
<% end_if %>

