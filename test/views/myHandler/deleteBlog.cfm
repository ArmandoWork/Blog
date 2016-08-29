<cfparam name="form.submitdel" default=""/>
<cfparam name="form.Titledel" default=""/>
<cfparam name="form.Authordel" default=""/>

<h1>Blog löschen</h1>

<p>Bitte geben Sie den Titel und Author des BLogs an, welcher Sie löschen wollen:<br></p>
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