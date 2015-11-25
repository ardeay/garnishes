(** garnish: jquery nivo slider > main garnish snippet **)
<div id="slider" class="nivoSlider heading-image">
	{{each jquery_nivo_slider as slide sort by slide.sort asc}}
		<a href="{{truePath({slide.link})}}" title="{{slide.title}}">
			<img src="{{slide.image.getImage(990,350,crop)}}" title="#caption{{index}}" />
		</a>
	{{end-each}}
</div>

{{each jquery_nivo_slider as slide sort by slide.sort asc}}
<div id="caption{{index}}" class="nivo-html-caption">
	<h2>{{slide.title}}</h2>
	<span>{{slide.description.striptags()}}</span> 
</div>
{{end-each}}

<script type="text/javascript">
	(function($) {
		$(window).load(function() {
	        $('#slider').animate({ opacity: 1 }).nivoSlider({
	        	effect: '{{garnish.effect}}', // Specify sets like: 'fold,fade,sliceDown'
				slices: {{garnish.slices}}, // For slice animations
				animSpeed: {{garnish.animation_speed}}, // Slide transition speed
				pauseTime: {{garnish.pause_time}} // How long each slide will show
			});
	    });
	})(jQuery);
	
</script>



