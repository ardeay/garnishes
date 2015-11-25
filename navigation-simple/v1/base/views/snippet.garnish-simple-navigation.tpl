(** garnish: simple-navigation > main garnish snippet **)
<a href="javascript:void(0)" id="toggle-nav">
	<div></div>
	<div></div>
	<div></div>	
</a>
<div class="navigation-container">
{{site.navigation(2)}}
</div>

<script type="text/javascript">
	
	
$( document ).ready(function() {
	/// add sub class to sub nav
	$('li:has(ul)').addClass('has_sub');
	// setup mobile toggle button
	$('#toggle-nav').on('click',function(){
		$('.navigation-container').toggleClass('expanded');
	});
});
</script>