<div class="main-component">
        <!-- Heading Component-->
                <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title">Ultimos posts
                      </h5><a class="button button-xs button-gray-outline" href="/forum/index.php">Forum</a>
                    </div>
                  </article>

              <!-- List Comments Classic-->
              <div class="list-comments-classic">
            <% loop $ForumRecentPosts(5) %>
                              <!-- Comment Classic-->
                              <div class="comment-classic">
                                <svg version="1.1" x="0px" y="0px" width="6.888px" height="4.68px" viewbox="0 0 6.888 4.68" enable-background="new 0 0 6.888 4.68" xml:space="preserve">
                                  <path fill="#171617" d="M1.584,0h1.8L2.112,4.68H0L1.584,0z M5.112,0h1.776L5.64,4.68H3.528L5.112,0z"></path>
                                </svg>
                                <div class="comment-classic-header">
                                  <div class="comment-classic-header-aside"><img src="{$Avatar}" alt="" width="63" height="63"/>
                                  </div>
                                  <div class="comment-classic-header-main">
                                    <p class="comment-classic-title">{$Name}</p>
                                    <time class="comment-classic-time" datetime="2018">$Data
                                    </time>
                                  </div>
                                </div>
                                <div class="comment-classic-body">
                                  <div class="comment-classic-text">
                                    <p>{$Content}</p>
                                  </div>
                                  <div class="comment-classic-post-title"><a href="{$Link}">{$Subject}</a></div>
                                </div>
                              </div>
            <% end_loop %>

              </div>
</div>
