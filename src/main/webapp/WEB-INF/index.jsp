<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dojo Survey Index</title>
    </head>
    <body>
       	<h1>Dojo Survey Form</h1>
        <form action="/result" method="POST">
        	<div>
        		<label for="name">Name</label>
	        	<input type="text" name="name" id="name" required aria-required="true"/>
        	</div>
        	<div>
        		<label for="location">Location</label>
	        	<select name="location" id="location">
        			<option value="San Jose">San Jose</option>
        			<option value="Burbank">Burbank</option>
        			<option value="Bellevue">Bellevue</option>
        			<option value="Boise">Boise</option>
        		</select>
        	</div>
        	<div>
        		<label for="language">Language</label>
	        	<select name="language" id="language">
        			<option value="Python">Python</option>
        			<option value="JavaScript">JavaScript</option>
        			<option value="Java">Java</option>
        		</select>
        	</div>
        	<div>
        		<label for="comment">Comment (optional)</label>
	        	<textarea name="comment" id="comment"></textarea>
        	</div>
        	<input type="submit" value="Submit"/>
        </form>
    </body>
</html>