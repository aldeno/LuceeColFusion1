component{
	this.name = 'app';
	this.sessionManagement = true;
	this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0);
	function OnRequestStart(){

		if(FindNoCase("login.cfm", GetPageContext().GetRequest().getRequestURL().toString()) == 0){
			if(!StructKeyExists(Session, 'username')){
				location("login.cfm", "false", "301");
			}
		}

	}

	function OnSessionStart(){
		location("session.cfm", "false", "301");
	}
}
