<cfparam name="form.submitadd" default="0"/>
<cfparam name="form.submitdel" default="0"/>
<cfparam name="form.Title" default=""/>
<cfparam name="form.Titledel" default=""/>
<cfparam name="form.Author" default=""/>
<cfparam name="form.Authordel" default=""/>
<cfparam name="form.Content" default=""/>
<cfparam name="form.Category" default=""/>
<cfset blogs = EntityLoad('Blog') />

<cfscript>
if(form.submitadd)
{
	if( len(trim(form.Title)) && len(trim(form.Author)) && len(trim(form.Content)) && len(trim(form.Category)))
	{
		getModel('mymodel').addBlog(form.Title, form.Author, form.Content, form.Category);
	}
}
	
if (form.submitdel)
{
	for (row in prc.myresult)
	{
		if (prc.myresult.title == form.Titledel && prc.myresult.Author == form.Authordel)
		{
			getModel('mymodel').deleteBlog(form.Titledel, form.Authordel);
		}
	}
}
</cfscript>

<h1>Blog</h1>


<cfoutput query="prc.myresult">

	<div>
		<div>
			<h2><a href="/index.cfm/myHandler/blogpost.cfm?id=#prc.myresult.idblog#">#prc.myresult.title#</a></h2>
			<p>#prc.myresult.Author#  #dateformat(prc.myresult.dateposted, 'dd-mm-yyyy')#</p>
		</div>
		<div>
			<p>#left(prc.myresult.Content, 50)# <a href="/index.cfm/myHandler/blogpost.cfm?id=#prc.myresult.idblog#">...</a></p>
		</div>
		<div>
			<p><a href="##">#prc.myresult.Category#</a></p>
		</div>
	</div>

</cfoutput>

<a href="/index.cfm/myHandler/addBlog.cfm">Blog hinzufügen</a>
<a href="/index.cfm/myHandler/deleteBlog.cfm">Blog löschen</a>