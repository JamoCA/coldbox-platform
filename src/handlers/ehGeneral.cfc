<!-----------------------------------------------------------------------Author 	 :	Luis MajanoDate     :	September 25, 2005Description :	General handler for my hello application. Please remember to alter	your extends base component using the Coldfusion Mapping.	example:		Mapping: fwsample		Argument Type: fwsample.system.eventhandlerModification History:Sep/25/2005 - Luis Majano	-Created the template.-----------------------------------------------------------------------><cfcomponent name="ehGeneral" extends="coldbox.system.eventhandler">	<!--- ************************************************************* --->	<cffunction name="init" access="public" returntype="any" output="false">		<cfset super.init()>		<cfreturn this>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onRequestStart" access="public">	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onApplicationStart" access="public">		<cfset application.luis = "Yes sir">		<cfset application.loader = getPlugin("JavaLoader").setup("includes/helloworld.jar")>		<cfset application.mysiteDSNBean = getDatasource("mysite")>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onRequestEnd" access="public">	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="dspHello" access="public" returntype="string">	    <cfset rc.MailBean = getMailSettings()>		<!--- Create a tracer message --->		<cfset getPlugin("logger").tracer("Starting dspHello. Using default name")>		<!--- Set the firstname Value --->		<cfset setValue("firstname",getSetting("Codename", true) & getSetting("Version", true))>		<!--- Set the View To Display, after Logic --->		<cfset setView("vwHello")>		<!--- Set another tracer variable --->		<cfset getPlugin("logger").tracer("View has been set")>		<!--- Create a simple permanent variable --->		<cfset getPlugin("clientstorage").setvar("luis","Luis Majano")>		<!--- Permanent Complex Variable --->		<cfset complexStruct = structnew()>		<cfset complexStruct.today = now()>		<cfset complexStruct.message = "This is a complex variable.">		<cfset complexStruct.BitFlag = "1">		<cfset getPlugin("clientstorage").setvar("complexStruct",complexStruct)>		<cfset complete = isEmail("lmajano@gmail.com")>		<cfset setvalue("HelloWorldObj", application.loader.create("HelloWorld").init())>		<!--- Create an info MessageBox --->		<cfset getPlugin("messagebox").setMessage("info", "Hello and welcome to the Textus' message box. You can place messages here from any of your applications. You can also choose the desired image to display. You can set error message, warning messages or just plain informative messages like this one. You can do this by using the <b>messagebox</b> plugin.")>		<!--- Get view contents ---->		<cfset setValue("MyQuote", renderView("vwQuote"))>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="doChangeLocale" access="public" returntype="void">		<!--- Change Locale --->		<cfset getPlugin("i18n").setfwLocale(getValue("locale"))>		<cfset dspHello()>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onException" access="public" returntype="void" >		<cfoutput>In onException</cfoutput>	</cffunction>	<!--- ************************************************************* --->		<cffunction name="doLog" access="public" returntype="void" output="false">		<cfscript>		getPlugin("logger").logEntry("error","This is an error message that I logged.","Home Portals is the best.");		getPlugin("logger").logEntry("information","This is an information message that I logged.");		getPlugin("logger").logEntry("warning","This is an warning message that I logged.");		getPlugin("logger").logEntry("fatal","The whole thing crashed man");		dspHello();		</cfscript>	</cffunction>		<cffunction name="doClearLog" access="public" returntype="void" output="false">		<cfscript>		getPlugin("fileUtilities").removeFile(getSetting("ColdboxLogsLocation"));		setnextevent("ehGeneral.dspHello","fwreinit=1");		</cfscript>	</cffunction>	<!--- ************************************************************* --->	<cffunction name="docustomplugin" access="public">		<cfset getMyPlugin("myclientstorage").setvar("MyCustomVariable","Custom Variable has been set by custom plugin at #timeformat(now(),"HH:MM:SS TT")#.")>		<cfset setNextEvent("","usecustomplugin=true")>	</cffunction>	<!--- ************************************************************* --->	</cfcomponent>