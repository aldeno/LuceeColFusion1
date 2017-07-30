<cfcomponent rest="true" restpath="boattype" displayname="BoatType">
  <cffunction name="getBoatTypeData" access="remote" returntype="struct" httpmethod="GET" produces="text/plain" restpath="{boatId}">

    <cfargument name="boatId" required="true" type="numeric" restargsource="path"/>

    <cfquery datasource="modulparkag" name="boatTypes">
      SELECT TOP 1 BT.Id, BT.Name, BT.PriceWeek, BT.PriceWeekend, D.DiscountRate, D.DiscountAfter
      FROM BoatType BT
      INNER JOIN  Discount D
      ON BT.DiscountId = D.Id
      WHERE BT.Id = <cfqueryparam value="#boatId#" cfsqltype="CF_SQL_INTEGER"/>
    </cfquery>
    <cfscript>
      boat = StructNew();
      boat.Id = boatTypes.Id;
      boat.Name = boatTypes.Name;
      boat.PriceWeek = boatTypes.priceweek;
      boat.PriceWeekend = boatTypes.PriceWeekend;
      boat.DiscountRate = boatTypes.DiscountRate;
      boat.discountAfter = boatTypes.DiscountAfter;
    </cfscript>
    <cfreturn boat>
  </cffunction>
  <cffunction name="updateBoatType" access="remote" returntype="any" httpmethod="PUT">
      <cfset requestBody = deserializeJSON(toString( getHttpRequestData().content)) />

      <cfquery name = "updateBoatTypes" datasource = "modulparkag">
          UPDATE BoatType
             SET PriceWeek = <cfqueryparam value="#requestBody.PriceWeek#" cfsqltype="CF_SQL_DECIMAL"/>,
             PriceWeekend = <cfqueryparam value="#requestBody.PriceWeekend#" cfsqltype="CF_SQL_DECIMAL"/>
           WHERE Id = <cfqueryparam value="#requestBody.BoatTypeId#" cfsqltype="CF_SQL_INTEGER"/>
      </cfquery>
      <cfquery name = "updateDiscountData" datasource = "modulparkag">
        UPDATE D
         SET D.DiscountRate = <cfqueryparam value="#requestBody.DiscountRate#" cfsqltype="CF_SQL_INTEGER"/>,
          D.DiscountAfter = <cfqueryparam value="#requestBody.DiscountAfter#" cfsqltype="CF_SQL_INTEGER"/>
         FROM Discount D
         INNER JOIN BoatType BT
         ON D.Id = BT.DiscountId
         WHERE BT.Id = <cfqueryparam value="#requestBody.BoatTypeId#" cfsqltype="CF_SQL_INTEGER"/>
      </cfquery>
      <cfreturn true>
  </cffunction>
</cfcomponent>
