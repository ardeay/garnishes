(** garnish: squares > main garnish snippet **)
<div class="squares-snippet">
	<div class="z-row">
		{{each info_squares as square sort by square.sort asc limit {garnish.display} }}
		<div class="col-1/{{garnish.divisions}}" onclick="window.location = '{{truePath({square.url})}}'">
			<div class="square">
				<h4>{{square.title}}</h4>
				{{if {square.image} }}
				<img class="z-responsive-width" src="{{square.image.getImage(310, 200, crop)}}" />
				{{end-if}}
				<p>{{square.description}}</p>
				<a class="action" href="{{truePath({square.url})}}">{{square.action_title}}</a>
			</div>
		</div>
		{{if {index} % {garnish.divisions} == 0}}
	</div>
	<div class="z-row">
		{{end-if}}
		{{end-each}}
	</div>
</div>



