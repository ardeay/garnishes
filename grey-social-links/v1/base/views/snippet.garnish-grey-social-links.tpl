(** garnish: grey social links > main garnish snippet **)
<ul class="social-links">
	{{each social_links as link sort by link.sort asc}}
	<li><a href="{{link.link}}" class="{{link.link_type}}"></a></li>
	{{end-each}}
</ul>



