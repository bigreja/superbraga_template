<% if $Pages %> <ul class="breadcrumbs-custom-path">
              <% loop $Pages %><% if $Last %><li class="active">$MenuTitle.XML</li><% else %>
              <% if not Up.Unlinked %><li><a href="$Link"><% end_if %>$MenuTitle.XML<% if not Up.Unlinked %></a><% end_if %> $Up.Delimiter.RAW <% end_if %>
              <% end_loop %>
</ul>
<% end_if %>
