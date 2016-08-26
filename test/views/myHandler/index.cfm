<h1>Blog</h1>

<cfoutput query="prc.myresult">

	<div>
		<div>
			<h2><a href="/views/myHandler/blogpost.cfm?id=#prc.myresult.idblog#">#prc.myresult.title#</a></h2>
			<p>#prc.myresult.Author#  #dateformat(prc.myresult.dateposted, 'dd-mm-yyyy')#</p>
		</div>
		<div>
			<p>#prc.myresult.Content#</p>
		</div>
		<div>
			<p><a href="##">#prc.myresult.Category#</a></p>
		</div>
	</div>

</cfoutput>

<a href="/views/myHandler/addBlog.cfm">Blog hinzufügen</a>

<cfscript>
if( !len(trim(form.Title)) || !len(trim(form.Author)) || !len(trim(form.Content)) || !len(trim(form.Category)))
{
	addBlog(form.Title,form.Author,form.Content,form.Category);
}
</cfscript>