<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBPdh68N4HLtlR2UFnE3FYVPnx7gIz3vyo"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>대한항공 이벤트</title>
</head>
<body>
<section>
	<article id="publicArticle" style="width:100%">
		<tiles:insertAttribute name="container"/>
	</article>
</section>
</body>
</html>