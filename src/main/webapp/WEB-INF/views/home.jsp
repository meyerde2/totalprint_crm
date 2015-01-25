<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		
			<h1>Startseite </h1>
		<div class="well">
			<p>The time on the server is ${serverTime}.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
				magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
				Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</P>
		
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
   		Page hit counter: <b> ${cookie.hitCounter.value} </b>
		
		</div>
	<a href="javascript:set_cookie('testcookie','mein Wert2222',2)">Cookie anlegen</a><br />
<a href="javascript:alert(read_cookie('testcookie'))">Cookie auslesen</a><br />
<a href="javascript:delete_cookie('testcookie')">Cookie löschen</a>
	
	<script type="text/javascript">
	
	function set_cookie(my_cookie,value,days) {
	
		 if (days) {
		  var date = new Date();
		  date.setTime(date.getTime()+(days*24*60*60*1000));
		  var expires = "; expires="+date.toGMTString();
		 } else expires = ""
		 	document.cookie = my_cookie+"="+value+expires+"; path=/crm";
			 wert1 = 'wert1=abc; path=/crm';
			 wert2 = 'wert2=def; path=/crm';
			 wert3 = 'wert3=ghi; path=/crm';
			 document.cookie = wert1;

		}

		function read_cookie(my_cookie) {
		 var my_cookie_eq = my_cookie + "=";
		 var ca = document.cookie.split(';');
		 for(var i=0;i< ca.length;i++) {
		  var c = ca[i];
		  while (c.charAt(0)==' ') {
		   c = c.substring(1,c.length);
		  }
		  if (c.indexOf(my_cookie_eq) == 0) {
		   return c.substring(my_cookie_eq.length,c.length);
		  }
		 }
		 return null
		}

		function delete_cookie(my_cookie) {
		 set_cookie(my_cookie,"",-1);
		}
	</script>
	</tiles:putAttribute>
</tiles:insertDefinition>