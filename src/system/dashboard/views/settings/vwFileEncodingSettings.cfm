<cfoutput><!--- HELPBOX ---><div id="helpbox" class="helpbox" style="display: none">	<div class="helpbox_header">	  <div class="helpbox_header_title"><img src="images/icons/icon_guide_help.gif" align="absmiddle"> Help Tip</div>	</div>		<div class="helpbox_message" >	  <ul>	  	<li>These settings only apply when you are using the fileutilities file writing and reading methods.</li>	  	<li>The methods affected by this setting are: <strong>readfile(), savefile(), appendfile()</strong></li>	  </ul>	</div>	<div align="right" style="margin-right:5px;">	<input type="button" value="Close" onClick="helpoff()" style="font-size:9px">	</div></div><form name="updateform" id="udpateform" action="javascript:doFormEvent('#getValue("xehDoSave")#','content',document.updateform)" onSubmit="return confirmit()" method="post"><div class="maincontentbox">	<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/fileencoding_icon.gif" align="absmiddle" />&nbsp; File Encoding Settings</div>	</div>	<!--- Messagebox --->	#getPlugin("messagebox").renderit()#	<div class="contentboxes">		<p>Below are the ColdBox's file reading and writing encoding settings.  You can only select a valid encoding	from the drop down list.</p>	<br>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">	    	<tr>			<th>Setting</th>			<th>Value</th>		  </tr>		  	     <tr>	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>File Character Set</strong>	     	</td>	     	<td>	     	<select name="DefaultFileCharacterSet">	     		<cfloop from="1" to="#listlen(getvalue("AvailableCFCharacterSets"))#" index="counter">				<option value="#listgetat(getValue("AvailableCFCharacterSets"),counter)#"				        <cfif listgetat(getValue("AvailableCFCharacterSets"),counter) eq getvalue("DefaultFileCharacterSet")>selected</cfif>>#listgetat(getvalue("AvailableCFCharacterSets"),counter)#</option>	     		</cfloop>	     	</select>	     	</td>	     </tr>		              </table>		</div>	</div>		<div align="right" style="margin-right:5px;margin-bottom: 10px">		<input type="submit" value="Submit Changes" >	</div></div></form></cfoutput>