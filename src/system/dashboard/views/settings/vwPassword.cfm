<cfoutput><!--- HELPBOX ---><div id="helpbox" class="helpbox" style="display: none">	<div class="helpbox_header">	  <div class="helpbox_header_title"><img src="images/icons/icon_guide_help.gif" align="absmiddle"> Help Tip</div>	</div>		<div class="helpbox_message" >	  <ul>	  	<li>In this screen you can change your current dashboard password. It is stored in your settings.xml.cfm file in this	  	application's config directory. And by the way it is encrypted.</li>	  </ul>	</div>	<div align="right" style="margin-right:5px;">	<input type="button" value="Close" onClick="helpoff()" style="font-size:9px">	</div></div><form name="updateform" id="udpateform" action="javascript:doFormEvent('#getValue("xehDoSave")#','content',document.updateform)" onSubmit="return confirmit()" method="post"><div class="maincontentbox">		<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/password_icon.gif" align="absbottom" />&nbsp; Change Dashboard Password</div>	</div>	<!--- Messagebox --->	#getPlugin("messagebox").renderit()#	<div class="contentboxes">		<p>Please enter your current and new password(s) in order to change your Dashboard password.</p>	<br>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">		     <tr>	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>Current Password</strong>	     	</td>	     	<td>	     	<input type="password" name="oldpassword" value="" size="25" maxlength="20">	     	</td>	     </tr>		     	     <tr bgcolor="##f5f5f5">	     	<td align="right"  style="border-right:1px solid ##ddd">	     	<strong>New Password</strong>	     	</td>	     	<td>	     	<input type="password" name="newpassword" value="" size="25" maxlength="20">	     	</td>	     </tr>	     	     <tr>	     	<td align="right"  style="border-right:1px solid ##ddd">	     	<strong>Confirm New Password</strong>	     	</td>	     	<td>	     	<input type="password" name="newpassword2" value="" size="25" maxlength="20" >	     	</td>	     </tr>	         </table>		</div>	</div>		<div align="right" style="margin-right:5px;margin-bottom: 10px">		<input type="submit" value="Submit Changes" >	</div></div></form></cfoutput>