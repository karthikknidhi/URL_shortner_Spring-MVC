<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>Url Shortner</title>

   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <style type="text/css">
      <%@include file="/webapp/resources/css/bootstrap.min.css" %>
      <%@include file="/webapp/resources/css/bootstrap-theme.min.css" %>
   </style>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <script src="/webapp/resources/jquery.js"></script>
   <script src="/webapp/resources/js/bootstrap.js"></script>

</head>

<%-- getting attributes from the model: --%>
<%
   String url= (String) request.getAttribute("url"); 
   boolean emptyDB = (boolean) request.getAttribute("emptyDB");
   boolean notFound = (boolean) request.getAttribute("itemnotfound");
   boolean blank = (boolean) request.getAttribute("blank");
%>

<body>
   <div class="container">
   <br><br>

   <img src="https://www.hover.com/blog/wp-content/uploads/2014/11/hv_URLshortener_1000x500.jpg" class=" center-block" height="110" width="535" align="middle"></img>
   <br><br>

   <%--if the URL's DB is not empty && URL is found in the DB: --%>
   <% if (emptyDB != true && notFound != true && blank !=true){ %>
   <h4>The original URL for the shortened one you entered is: </h4>
   <h4> <%= url %> </h4>
   <br/>
   <a href="guest">Go Back</a>
   <%}%>
   
   <%-- if the URL is not found in the DB: --%>
   <% if (notFound == true){
	  out.println("Sorry, URL is not found. Try another one! or login to add the URL");%>
	  <br/> 
	  <a href="guest">Go Back</a>
   <%}%>
   
   <%-- if the URL DB is empty, i.e no URL's stored in DB yet: --%>
   <% if (emptyDB == true){
	  out.println("Sorry, There are no URL saved. Please login and add some URL's!");%>
	  <br/>
	  <a href="guest">Go Back</a> 
   <%}%>
   
   <%-- if the URL is blank: --%>
   <% if (blank == true){
	  out.println("You need to enter url. Try again!");%>
	  <br/> 
	  <a href="guest">Go Back</a>
   <%}%>
   
  </div>  
          <br>
          <br>
          <br>
          <br><br>
          <br>
          <br>
  
  <footer class="footer">
      <div class="container">
<<<<<<< HEAD
        <p class="text-muted">Designed and built with all the love in the world by Karthik</p>
=======
        <p class="text-muted">Designed and built with all the love in the world by Karthik, Dean & Neha.</p>
>>>>>>> 8a4fcdf96ff6a1d5eec4edd69bade79591d53e58
      </div>
    </footer>  
</body>
</html>