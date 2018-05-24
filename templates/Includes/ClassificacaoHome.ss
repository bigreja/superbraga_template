<div class="main-component">
    <div class="row row-30">
    <% loop $ClassificacaoHome %>
        <div class="col-md-6">
    <div class="main-component">
                <!-- Heading Component-->
                <article class="heading-component">
                  <div class="heading-component-inner">
                    <h5 class="heading-component-title">{$Title}</h5>
                     <a class="button button-xs button-gray-outline" href="#">Ver</a>
                  </div>
                </article>

                <!-- Table team-->
                <div class="table-custom-responsive">
                  <table class="table-custom table-standings table-creative table-custom-striped">
                    <thead>
                      <tr>
                        <th colspan="2">Posição</th>
                        <th>V</th>
                        <th>D</th>
                        <th>PTS</th>
                      </tr>
                    </thead>
                    <tbody>
                      <% loop LinhasClassificacao.Limit(10) %>
                      <tr>
                        <td><span>{$Pos}</span></td>
                        <td class="team-inline">
                          <div class="team-figure"><img src="{$Clube.Emblema.Fit(37,37).Link}" alt="{$Clube.Title}" />
                          </div>
                          <div class="team-title">
                            <div class="team-name">{$Clube.TitleShort}</div>
                            <!-- <div class="team-country">&nbsp;</div> -->
                          </div>
                        </td>
                        <td>{$Pontos}</td>
                        <td>{$Vitorias}</td>
                        <td>{$Derrotas}</td>
                      </tr>
                      <% end_loop %>
                      <tr>
                        <td><span>...</span></td>
                        <td class="team-inline">
                          <div class="team-figure">
                          </div>
                          <div class="team-title">
                            <div class="team-name">...</div>
                            <!-- <div class="team-country">&nbsp;</div> -->
                          </div>
                        </td>
                        <td>...</td>
                        <td>...</td>
                        <td>...</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
</div>
    <% end_loop %>
    </div>
</div>

