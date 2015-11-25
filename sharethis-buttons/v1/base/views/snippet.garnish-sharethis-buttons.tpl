(** garnish: share this buttons > main garnish snippet **)
<div class="blog-social">
	(** remove the displayText to only show icons, remove a span to remove the share button **)
	{{each sharethis_buttons as button}}
	<span class='{{button.button}}' displayText="{{button.text}}"></span>
	{{end-each}}
</div>
<script type="text/javascript">var switchTo5x=true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
{{if {garnish.publisher_id} }}
<script type="text/javascript">stLight.options({publisher: "{{garnish.publisher_id}}", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
{{end-if}}



