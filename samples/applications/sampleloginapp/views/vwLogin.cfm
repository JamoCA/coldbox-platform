<cfoutput><form name="loginform" action="#cgi.SCRIPT_NAME#" method="post"><!--- IN order for the controller to know where form is submitting, place your event hidden element, to point to your handler's method.Also, note that the form, submits to the cgi.SCRIPT_NAMEExample: ehGeneral.doLogin.The controller will instantiate the ehGeneral handler and run thedoLogin method.  All the form variables and url variables are gatheredby the controller into the request collection.---><input type="hidden" name="event" value="#getValue("xehLogin")#"><!--- Login Form ---><br /><br /><table width="400" align="center" cellpadding="10" cellspacing="0" style="border-bottom:2px solid ##ddd;border-right:2px solid ##ddd; border-left:1px solid ##eaeaea; border-top: 1px solid ##eaeaea;background: ##f5f5f5">  <tr>    <td style="font-family:Georgia, 'Times New Roman', Times, serif; font-size:25px"><strong>Login Form </strong></td>  </tr>  <!--- ColdBox messages box if errors --->  <cfif not getPlugin("messagebox").isEmpty()>  <tr>    <td>#getPlugin("messagebox").render()#</td>  </tr>  </cfif>  <tr>    <td>      <p>Please use the form below to log in to the sample app. Use (admin/admin or lmajano/coldbox)    </p>      <p>&nbsp;  </p>      <table width="80%" align="center" cellpadding="5" cellspacing="0">        <tr>          <td><strong>Username:</strong></td>        </tr>        <tr>          <td height="32"><input name="username" type="text" id="username" value="#getValue("username","")#"></td>        </tr>      <tr>          <td><strong>Password:</strong></td>        </tr>        <tr>          <td><input name="password" type="password" id="password" /></td>        </tr>    </table></td></tr>    <tr>    <td align="right"><input type="submit" name="Submit" value="Login" /></td>  </tr></table></form></cfoutput>