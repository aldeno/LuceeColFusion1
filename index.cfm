<cfparam name="form.submitted" default="false" />
<cfparam name="form.boatId" default="" />
<cfparam name="form.rentFrom" default="#dateTimeFormat(now(),'yyyy-mm-dd')#T#dateTimeFormat(now(),'HH:nn')#" />
<cfparam name="form.rentTo" default="#dateTimeFormat(now(),'yyyy-mm-dd')#T#dateTimeFormat(now(),'HH:nn')#" />
<layout:page section="contact">
<html>
    <head>
        <title>Lucee page</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <div class="container" style="margin-top: 50px;">
            <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
            <cfprocparam
                cfsqltype="cf_sql_timestamp"
                value="#form.rentFrom#">
            <cfprocparam
                cfsqltype="cf_sql_timestamp"
                value="#form.rentTo#">
            <cfprocparam
                cfsqltype="cf_sql_numeric"
                value="#form.boatId#">
                <cfprocresult name = RS1>
            </cfstoredproc>

            <cfquery datasource="modulparkag" name="availableBoats">
            SELECT * FROM Boat
            </cfquery>

            <div class="panel panel-primary">
                <div class="panel-heading">Logged user: <cfoutput>#Session.username#</cfoutput></div>
                <div class="panel-body">
                    <cfoutput>
                        <form id="form" class="form-inline" action="" method="POST">
                            <div class="form-group">
                                <label for="ddlBoat">Boat:</label>
                                <select class="form-control" id="ddlBoat" name="boatId">
                                    <cfloop query="availableBoats">
                                        <option value="#availableBoats.Id#" <cfif boatId EQ availableBoats.Id>selected="selected"</cfif>>#availableBoats.Name#</option>
                                    </cfloop>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="txtRentFrom">Rent from:</label>
                                <input type="datetime-local" class="form-control" id="txtRentFrom" name="rentFrom" value="#rentFrom#"/>
                            </div>
                            <div class="form-group">
                                <label for="txtRentTo">Rent to:</label>
                                <input type="datetime-local" class="form-control" id="txtRentTo" name="rentTo" value="#rentTo#"/>
                            </div>
                            <input type="hidden" name="submitted" value="1" />
                            <button type="submit" class="btn btn-default">Calculate</button>
                            <lable>You have to pay: <cfoutput query = RS1>#Result#</cfoutput> Euro</label>
                        </form>
                    </cfoutput>
                </div>
            </div>
        </div>
    </body>
</html>
