<!DOCTYPE html>
<cfparam name="form.submitted" default="false" />
<cfparam name="form.username" default="" />
<cfparam name="form.password" default="" />
<html>
  <head>
    <meta charset="utf-8">
    <title>Login page</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"
        type="text/javascript"></script>
    <script src="index.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <!--TODO -- REMIDIATE SQL INJECTION SECURITY RISK-->
    <cfquery datasource="modulparkag" name="user">
      SELECT TOP 1 U.Id, U.Username, U.FirstName, U.LastName, UT.Name
      FROM [User] U INNER JOIN UserType UT
      ON U.UserTypeId = UT.Id
      WHERE U.Username = <cfqueryparam value="#form.username#" cfsqltype="cf_sql_varchar" />
      AND U.Password = <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar" />
    </cfquery>
    <cfif user.RecordCount GT 0 AND (username IS NOT '' OR password IS NOT '')>
      <cfscript>
        Session.username = form.username;
        Session.UserId = user.Id
        if(user.Name[1] == 'Owner'){
          location('owner.cfm');
        }
          else{
              location('index.cfm');
          }
      </cfscript>
    <cfelse>
      Username and/or password are incorrect.
    </cfif>
    <div class="container" style="margin-top: 50px;">
    <div class="panel panel-primary">
          <div class="panel-heading">
            Login
          </div>
          <div class="panel-body">
            <cfoutput>
            <form id="form" class="form" action="" method="POST">
              <div class="form-group">
                <label for="loginUsername">Username:</label>
                <input type="text" class="form-control" id="username" name="username" value="#username#">
              </div>
              <div class="form-group">
                <label for="logiPassword">Password:</label>
                <input type="password" class="form-control" id="password" name="password" value="#password#">
              </div>
              <button type="submit" class="btn btn-default">Login</button>
              <input type="hidden" name="submitted" value="1" />
            </form>
          </cfoutput>
          </div>
        </div></div>
  </body>
</html>
