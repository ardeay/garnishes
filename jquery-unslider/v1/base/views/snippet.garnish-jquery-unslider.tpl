(** garnish: jquery unslider > main garnish snippet **)
<div id="slider" class="unslider-banner">
	<ul>
		{{each unslider_image as slide sort by slide.sort asc}}
		<li>
			<img src="{{slide.image.getImage(1600,400,crop)}}" width="100%"></li>
		{{end-each}}
	</ul>
</div>
<script type="text/javascript">
	var IMAGIT;
	(function($) {
		var img = $('.unslider-banner img').get(0);
		
		$('.unslider-banner').unslider({
			fluid: true,
			dots: {{garnish.show_dots}},
			speed: {{garnish.animation_speed}}
		});
	})(jQuery);
</script>