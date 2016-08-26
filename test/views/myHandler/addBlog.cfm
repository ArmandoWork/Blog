<cfparam name="form.Title" default=""/>
<cfparam name="form.Author" default=""/>
<cfparam name="form.Content" default=""/>
<cfparam name="form.Category" default=""/>

<cfform action="/views/myHandler/">
<table>
	<tr>
		<td><label for="Title">Titel:</label></td>
		<td><cfinput name="Title" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><label for="Author">Author:</label></td>
		<td><cfinput name="Author" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><label for="Content">Content:</label></td>
		<td><cfinput name="Content" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><label for="Category">Category:</label></td>
		<td><cfinput name="Category" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><cfinput name="submit" type="submit"/></td>
	</tr>
</table>
</cfform>


