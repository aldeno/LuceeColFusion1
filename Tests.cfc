<cfcomponent>
  <cffunction name="test1" output="true" desc access="public" returnType="void"
  description="Rent For 0h">
    <cfset expectedResult=0>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test1.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test2" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for 0.5h on Weekend">
    <cfset expectedResult=20>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:59:51.497">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test2.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test3" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for 0.5h on Weekend">
    <cfset expectedResult=30>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:59:51.497">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test3.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test4" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for 0.5h on Week">
    <cfset expectedResult=10>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:59:51.497">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test4.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test5" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for 0.5h on Week">
    <cfset expectedResult=15>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:29:51.497">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:59:51.497">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test5.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test6" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for 2h on Weekend and 5h on Week">
    <cfset expectedResult=160>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-31 05:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test6.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test7" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for 2h on Weekend and 5h on Week">
    <cfset expectedResult=240>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-31 05:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test7.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test8" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 on 7/27 until 7/31 (Weekend included)">
    <cfset expectedResult=1490>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-31 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test8.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test9" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 on 7/27 until 7/31 (Weekend included)">
    <cfset expectedResult=2235>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-31 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test9.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test10" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for one minute on weekend">
    <cfset expectedResult=20>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:01:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test10.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test11" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for one minute on weekend">
    <cfset expectedResult=30>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 22:01:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test11.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test12" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for 10h Week day (5h with discount and 5h without discount)">
    <cfset expectedResult=150>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 10:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 20:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test12.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test13" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for 10h Week day (5h with discount and 5h without discount)">
    <cfset expectedResult=225>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 10:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-27 20:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test13.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test14" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 1 for 10h Weekend day (5h with discount and 5h without discount)">
    <cfset expectedResult=300>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 10:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 20:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="1">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test14.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

  <cffunction name="test15" output="true" desc access="public" returnType="void"
  description="Rent Boat Type 2 for 10h Weekend day (5h with discount and 5h without discount)">
    <cfset expectedResult=450>

    <cfstoredproc procedure="GetRentCalculation" datasource="modulparkag">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 10:00:00.000">
      <cfprocparam cfsqltype="cf_sql_timestamp" value="2017-07-30 20:00:00.000">
      <cfprocparam cfsqltype="cf_sql_numeric" value="2">
      <cfprocresult name=RS1>
    </cfstoredproc>
    <div class="well">
      <label>#test15.description#</label><br/>
      <label <cfif RS1.Result EQ expectedResult>class="label label-success" <cfelse> class="label label-danger" </cfif>>
        <span>Expected:
        </span>
        #expectedResult#,
        <span>Result:
        </span>
        <cfoutput query=RS1>#Result#</cfoutput>
      </label>
    </div>
  </cffunction>

</cfcomponent>
