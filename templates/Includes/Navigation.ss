<!-- RD Navbar Nav-->
<ul class="rd-navbar-nav">
                   <% loop $Menu(1) %>
                  <li class="rd-nav-item $LinkingMode"><a class="rd-nav-link" href="$Link">$MenuTitle.XML</a>
                    <% if $Menu(1).Children %>
                    <!-- RD Navbar Dropdown -->
                    <ul class="rd-menu rd-navbar-dropdown">
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="index.html">Home Soccer</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-baseball.html">Home Baseball</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-basketball.html">Home Basketball</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-billiards.html">Home Billiards</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-bowling.html">Home Bowling</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-rugby.html">Home Rugby</a></li>
                    </ul>
                  </li>
                   <% end_if %>
                   <% end_loop %>
                </ul>
		<ul class="nav navbar-nav ml-auto">
 </ul>
