<!DOCTYPE html>
<cfparam name="form.submitted" default="false" />
<cfparam name="form.priceweek" default=0 />
<cfparam name="form.priceWeekend" default=0 />
<cfparam name="form.discount" default=0 />
<cfparam name="form.boatTypeId" default=0/>
<cfparam name="form.discountAfter" default=0 />

<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <script src="http://code.jquery.com/jquery-latest.min.js"
        type="text/javascript"></script>
    <script src="index.js"  type="text/javascript"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <cfquery datasource="modulparkag" name="boatTypes">
      SELECT BT.Id, BT.Name, BT.PriceWeek, BT.PriceWeekend, D.DiscountRate, D.DiscountAfter
      FROM BoatType BT
      INNER JOIN  Discount D
      ON BT.DiscountId = D.Id
    </cfquery>

    <cfset priceweek=boatTypes.PriceWeek[1]>
    <cfset priceWeekend=boatTypes.PriceWeekend[1]>
    <cfset discount=boatTypes.DiscountRate[1]>
    <cfset discountAfter=boatTypes.DiscountAfter[1]>

    <div class="container" style="margin-top: 50px;">
    <div class="panel panel-primary">
          <div class="panel-heading">
            Change prices and discount
          </div>
          <div class="panel-body">
            <cfoutput>
            <form id="form" class="form" action="" method="POST">
              <div class="form-group">
                  <label for="ddlBoat">Boat Type:</label>
                  <select class="form-control" id="ddlBoat" onchange="loadBoatData()"name="boatTypeId">
                      <cfloop query="boatTypes">
                          <option value="#boatTypes.Id#" <cfif boatTypeId EQ boatTypes.Id>selected="selected"</cfif>>#boatTypes.Name#</option>
                      </cfloop>
                  </select>
              </div>
              <div class="form-group">
                <label for="Price Weekend">Price Weekend:</label>
                <input type="text" class="form-control" id="priceWeekend" name="priceWeekend" value="#priceWeekend#">
              </div>
              <div class="form-group">
                <label for="priceWeek">Price Week:</label>
                <input type="text" class="form-control" id="priceWeek" name="priceWeek" value="#priceWeek#">
              </div>
              <div class="form-group">
                <label for="discount">Discount %:</label>
                <input type="text" class="form-control" id="discount" name="discount" value="#discount#">
              </div>
              <div class="form-group">
                <label for="discount">Discount after n days:</label>
                <input type="text" class="form-control" id="discountAfter" name="discountAfter" value="#discountAfter#">
              </div>
                <button type="button" onclick="saveBoatTypeData()" class="btn btn-default">Save</button>
              <input type="hidden" name="submitted" value="1" />
            </form>
          </cfoutput>
          <a href="tests.cfm" class="btn btn-primary" style="float:right;">Go to tests</a>
          </div>
        </div></div>
  </body>
</html>
