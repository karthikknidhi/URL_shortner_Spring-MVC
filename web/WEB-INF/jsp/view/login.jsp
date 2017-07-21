<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
   <body>
  
     
        <div class="container ">
        <br>
      
       <div class="jumbotron">
      <img src="https://www.hover.com/blog/wp-content/uploads/2014/11/hv_URLshortener_1000x500.jpg" class=" center-block" height="110" width="535" align="middle"></img>
      
  <h3>Hello, world!</h3>
  <p><h4>You must log in or sign up to access the site.</h4></p>
 <h5 align="right"> <a href="/guest">Go Back</h5></a>
</div>
      
         
     <%
         if( (Boolean)request.getAttribute("loginFailed"))
         
         {
         
             %>
      <div class="alert alert-danger" role="alert">
         <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
         <span class="sr-only">Error:</span>
         <b>The username or password you entered are not correct or It may not exist. Please try Sign Up
         again.</b><br /><br />
      </div>
      <%
         } else 
         
         if( (Boolean)request.getAttribute("userdoesnotexists") )
         
         {
         
             %>
                          
      <div class="alert alert-danger" role="alert">
         <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
         <span class="sr-only">Error:</span>
         <b>Sorry this user already exists ,Please login </b><br /><br />
      </div>
      <%
         }  %>
    
      <div class="container">
      <div class="row">
   <div class="col-md-6">
             <div class="panel panel-default">
   
       <h4 align="center">Sign up</h4>
           <div class="panel-body">
      
         <div class="col-md-10">
         <form:form action="signup" method="post" class="form-horizontal padding-small-horizontal" commandName="signUpForm">
               <div class="form-group">
                  <input type="hidden" name="action" value="login" />
                  <label for="inputEmail3" class="col-sm-6 control-label">Username<br /></label>
                  <div class="col-sm-6"> <input class="form-control" type="text" name="username" placeholder="Username"/><br /><br /></div>
               </div>
               <div class="form-group">
                  <label for="inputPassword3" class="col-sm-6 control-label">Password<br /></label>
                  <div class="col-sm-6">    <input class="form-control" type="password" name="password" placeholder="Password"/><br /><br />
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10" align="center">
                     <input type="submit" value="Sign Up" class="btn btn-info"/>
                  </div>
               </div>
            </form:form>
          
         </div></div></div>
      </div>
      
   <div class="col-md-6">
            <div class="panel panel-default">
         <h4 align="center">Login</h4>
               <div class="panel-body">
         
         <div class="col-md-10">
            <form:form action="login" method="post" class="form-horizontal padding-small-horizontal" commandName="loginForm">
               <div class="form-group">
                  <input type="hidden" name="action" value="login" />
                  <label for="inputEmail3" class="col-sm-6 control-label">Username<br /></label>
                  <div class="col-sm-6"> <input class="form-control" type="text" name="username" placeholder="Username"/><br /><br /></div>
               </div>
               <div class="form-group">
                  <label for="inputPassword3" class="col-sm-6 control-label">Password<br /></label>
                  <div class="col-sm-6">    <input class="form-control" type="password" name="password" placeholder="Password"/><br /><br />
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10" align="center">
                     <input type="submit" value="Log In" class="btn btn-info"/>
                  </div>
               </div>
            </form:form>
         </div>
      </div></div></div>
      </div>
      </div></div>
      
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