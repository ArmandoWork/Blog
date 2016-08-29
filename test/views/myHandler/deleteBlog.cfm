<cfparam name="form.submitdel" default=""/>
<cfparam name="form.Titledel" default=""/>
<cfparam name="form.Authordel" default=""/>

<cfform action="/index.cfm/myHandler">
<table>
	<tr>
		<td><label for="Titledel">Titel:</label></td>
		<td><cfinput name="Titledel" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><label for="Authordel">Author:</label></td>
		<td><cfinput name="Authordel" type="text" required="true"/></td>
	</tr>
	<tr>
		<td><cfinput name="submit" type="submit"/></td>
	</tr>
</table>
<input type="hidden" name="submitdel" value="1" />
</cfform>