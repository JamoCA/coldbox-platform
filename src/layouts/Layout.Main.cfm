<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" /><title><cfoutput>#getSetting("Codename",1)# #getSetting("Version",1)#</cfoutput></title><style type="text/css"><!--.Titles {	font:Arial, Helvetica, sans-serif;	font-size: 12px;	font-weight: bold;	color: #FFFFFF;	background-color: #006699;	padding: 5px 5px 5px 5px;	height: 30px;	text-align:center;}body{font:Arial, Helvetica, sans-serif;font-size: 12px;}a {	font:Arial, Helvetica, sans-serif;	font-size: 12px;	color: #0066CC;}a:hover {	color: #FF6600;}--></style><style>.mymessagebox{	border:3px outset #999999;	background: #F2F0FF;	width: 100%;	padding: 3px 3px 3px 3px;	font-family: Arial, Helvetica, sans-serif;	font-size: 11px;	font-weight: normal;}</style></head><body><table width="700" border="0" align="center" cellpadding="2" cellspacing="1" style="border: 1px solid #006699">  <tr class="Titles">    <td colspan="2" ><cfoutput>Welcome to the #getSetting("Codename",1)# #getSetting("Version",1)# Framework</cfoutput>    <cfoutput>    <select name="locale" onChange="window.location='index.cfm?event=ehGeneral.doChangeLocale&locale=' + this.value">    	<option value="en_US" <cfif getPlugin("i18n").getfwLocale() eq "en_US">selected</cfif>>English</option>    	<option value="es_SV" <cfif getPlugin("i18n").getfwLocale() eq "es_SV">selected</cfif>>Spanish</option>    </select>    </cfoutput>    </td>  </tr>  <tr>    <td width="77" height="30" align="center" bgcolor="#eeeeee">    <cfoutput>    #renderView("navigation")#    </cfoutput>    </td>    <td width="610">	<!--- Render the View Here --->	<cfoutput>#renderView()#</cfoutput>	</td>  </tr></table></body></html>