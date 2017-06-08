<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="context" value="<%=application.getContextPath() %>"/>
<!doctype html>
<html lang="en">
<meta charset="UTF-8" />
	 	<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<div class="container-fluid" style="width:80%">
<h1>ARTICLE UPDATE</h1>
		<input type="hidden" name="max" value="${max}"/>
		<input type="text" name="writer" style="margin-top:20px"  class="form-control" placeholder="작성자 이름" value="${writer}"/>
		<input type="text" name="title" style="margin-top:20px" class="form-control"  placeholder="제목" value="${title}"/><br />
	    <div class="row">
		    <div style="width:97%; margin:10px auto" >
	      		<textarea class="form-control" rows="20" name="comment">${comment}</textarea>
		    </div>
	    </div>
	   
	<input type="submit" class="btn btn-danger" style="float:right;width:100px;margin-right:10px" value="CANCEL"/>
	<input type="button" class="btn btn-primary" style="float:right;width:100px;margin-right:10px" value="SUBMIT"/>
</div>
</body>
</html>