<cfset blog = EntityLoad('Blog',url.id,true) />

<cfoutput>
	<div>
		<div>
			<h2>#blog.title#</h2>
			<p>#blog.Author#  #dateformat(blog.dateposted, 'dd-mm-yyyy')#</p>
		</div>
		<div>
			<p>#blog.Content#</p>
		</div>
		<div>
			<p><a href="##">#blog.Category#</a></p>
		</div>
	</div>
</cfoutput>