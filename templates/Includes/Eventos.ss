 <% if EventosHome.Count != 0 %>
 <div class="aside-component">
                  <!-- Heading Component-->
                  <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title">Agenda
                      </h5>
                    </div>
                  </article>
<% loop EventosHome %>
            <% if $TemJogo==1 %>
            <% with $Jogos %>
                  <!-- Game Result Classic-->
                  <article class="game-result game-result-classic">
                    <div class="game-result-main">
                      <div class="game-result-team game-result-team-first">
                        <figure class="game-result-team-figure game-result-team-figure-big"><img src="{$HomeTeam.Emblema.Fit(55,55).Link}" alt="{$HomeTeam.TitleShort}"/>
                        </figure>
                        <div class="game-result-team-name">{$HomeTeam.TitleShort}</div>
                        <!-- <div class="game-result-team-country">USA</div> -->
                      </div>
                      <div class="game-result-middle">
                        <div class="game-result-score-wrap">
                          <div class="game-result-score game-result-team-win">{$HomeScore} <!--<span class="game-result-team-label game-result-team-label-top">Win</span> -->
                          </div>
                          <div class="game-result-score-divider">
                            <svg x="0px" y="0px" width="7px" height="21px" viewbox="0 0 7 21" enable-background="new 0 0 7 21" xml:space="preserve">
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
                          <div class="game-result-score">{$AwayScore}
                          </div>
                        </div>
                        <div class="game-results-status">{$DataJogo.Format('H:mm')}</div>
                      </div>
                      <div class="game-result-team game-result-team-second">
                        <figure class="game-result-team-figure game-result-team-figure-big"><img src="{$AwayTeam.Emblema.Fit(55,55).Link}" alt="{$AwayTeam.TitleShort}" />
                        </figure>
                        <div class="game-result-team-name">{$AwayTeam.TitleShort}</div>
                        <!-- <div class="game-result-team-country">Spain</div> -->
                      </div>
                    </div>
                    <div class="game-result-footer">
                      <ul class="game-result-details">
                        <li>$Local.Title</li>
                        <li>
                          <time datetime="2017-04-14">{$DataJogo.ShortMonth} {$DataJogo.Format('d, Y')}</time>
                        </li>
                      </ul>
                    </div>
                  </article>
                  <% end_with %>
<% end_if %>
<% end_loop %>
                </div>
<% end_if %>
