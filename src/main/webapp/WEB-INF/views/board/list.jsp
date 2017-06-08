<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="context" value="<%=application.getContextPath() %>"/>
<!doctype html>
<html lang="en">
<head>
<title>Board</title>
		<meta charset="UTF-8" />
	 	<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<script src="${context}/js/controller.main.js"></script>
</head>
<body>
<div id="wrapper" class="container-fluid" style="width:90%">
	
</div>
</body>
<script>
 var list='<form action="${context}/board.do">'
		+'<div style="width:90%;margin:20px auto;">'
		+'<select name="selectVal" class="form-control" style="width:20%;float:left;margin-right:36px">'
			+'<option value="all">전체</option>'
			+'<option value="writer">작성자</option>'
			+'<option value="title">제목</option>'
		+'</select>'
		+'<div class="input-group" style="width:60%;float:left;margin-right:30px">'
		    +'<span class="input-group-addon">SEARCH</span>'
		    +'<input id="msg" type="text" class="form-control" style="width:100%" name="msg" placeholder="Additional Info">'
		+'</div>'
		+'<button type="submit" class="btn btn-primary" style="width:100px">SUBMIT</button>'
		+'<input type="hidden" name="action" value="search"/>'
		+'</div>'
		+'</form>'
		+'<div style="margin:20px 0" >'
			+'<span> 총게시글수 : 61</span>'
			+'<button id="write" class="btn btn-danger" style="float:right;width:100px">글쓰기</button>'
		+'</div>'
		+'<table class="table table-hover" style="width:90%;margin:0 auto;">'
		+'<tr class="hanbit-table tr">'
			+'<td >NO</td>'
				+'<td>제 목</td>'
				+'<td >내 용</td>'
				+'<td>작성자</td>'
				+'<td>등록일</td>'
				+'<td>조회수</td>'
		+'</tr>'
		+'</table>';
		
var write='<h1>ARTICLE WRITING</h1>'
				+'<input type="text" name="writer" style="margin-top:20px"  class="form-control" placeholder="작성자 이름" />'
				+'<input type="text" name="title" style="margin-top:20px" class="form-control"  placeholder="제목" /><br />'
				+'<div class="row">'
				    +'<div style="width:97%; margin:10px auto" >'
				  		+'<textarea class="form-control" rows="20" name="comment"></textarea>'
				    +'</div>'
				+'</div>'
				+'<input type="reset" class="btn btn-danger" style="float:right;width:100px;margin-right:10px" value="CANCEL"/>'
				+'<button id="detail" type="submit" class="btn btn-primary" style="width:100px">SUBMIT</button>';

var detail='<h1>ARTICLE DETAIL</h1>'
				+'<input type="hidden" name="max" value="${seqNo}"/>'
					+'<input type="text" name="writer" style="margin-top:20px"  class="form-control" placeholder="작성자 이름" value="${writer}"/>'
					+'<input type="text" name="title" style="margin-top:20px" class="form-control"  placeholder="제목"  value="${title}"/><br />'
				    +'<div class="row">'
					    +'<div style="width:97%; margin:10px auto" >'
				      		+'<textarea class="form-control" rows="20" name="comment">${content}</textarea>'
					    +'</div>'
				    +'</div>'
				+'<input type="button" id="delete" class="btn btn-danger" style="float:right;width:100px;margin-right:10px" value="DELETE"/>DELETE'
				+'<input type="button" id="upload" class="btn btn-warning" style="float:right;width:100px;margin-right:10px" value="UPLOAD"/>UPLOAD'
				+'<input type="button" id="update" class="btn btn-success" style="float:right;width:100px;margin-right:10px" value="UPDATE"/>UPDATE';

				
var update='<h1>ARTICLE UPDATE</h1>'
				+'<input type="hidden" name="max" value="${max}"/>'
				+'<input type="text" name="writer" style="margin-top:20px"  class="form-control" placeholder="작성자 이름" value="${writer}"/>'
				+'<input type="text" name="title" style="margin-top:20px" class="form-control"  placeholder="제목" value="${title}"/><br />'
			    +'<div class="row">'
				    +'<div style="width:97%; margin:10px auto" >'
			      		+'<textarea class="form-control" rows="20" name="comment">${comment}</textarea>'
				    +'</div>'
			    +'</div>'
			    +'<input type="submit" class="btn btn-danger" style="float:right;width:100px;margin-right:10px" value="CANCEL"/>'
			    +'<input id="updateBoard" type="submit" class="btn btn-primary" style="float:right;width:100px;margin-right:10px" value="SUBMIT"/>';
 
var upload='<h1>ARTICLE UPLOAD</h1>'
			+'<input type="text" name="writer" style="margin-top: 20px" class="form-control" placeholder="작성자 이름" />' 
				+'<input type="text" name="title" style="margin-top: 20px" class="form-control" placeholder="제목" /><br />'
			+'<div class="row">'
				+'<div style="width: 97%; margin: 10px auto">'
					+'<textarea class="form-control" rows="20" id="comment"></textarea>'
				+'</div>'
			+'</div>'
			+'<a href="${context}/detail"><input type="submit" class="btn btn-danger" style="float: right; width: 100px; margin-right: 10px" value="CANCEL" /></a>'
			+'<input type="submit" class="btn btn-warning" style="float: right; width: 100px; margin-right: 10px" value="FILE" />'
			+'</div>'
			+'<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAjCAYAAADmOUiuAAADhklEQVR42u2YSWgUQRSGE/cFcUlc8CBuKIgoSkT04sEEUYmiBwVxARc8ikY96GECIoKCh0GQQXEyg7NvDKMRFJkMKmqC5uIhigtCcI0bxiUaM/4lr8Kz0tU43T0ZBRse3V2v+tXXtfz1usvK/h//5lH+V9GEQqHJsVjMFY1Gm2GduM7D3uM6F4/H96VSqTElAcvn8+UAOQj7RFDCemBf2L2wDsBu6Vc4NDgQDZ9nUAnY8kwmM4L8o9F7tTg3MdD6foHzeDyD0XhYNAqAD5FIZIVZfdTbDesiyK1FhwNUkhp7C9Aqg94dopah3nZ65k3R5qRo2AwOZXWw58IP30P07Gbl+av0bJ3jcG63eygCX6AGXgNgAV8saNzD5ppcND2ot4G9wHoqb3IUrrGx8Te4cDg8n8MBQsJ9Buhq6q0DNEfvyLrBYHCiHGYnh3U47DI19gIw86TP5XINQPk5avQjhrTaAKZDeVFR1lUUONgcDgfYBgkH3zJlURynuZhj8aZQ/Ze24fx+/0gEylLAZxxO0cA+cCg7Sr5v3Ice3kYve8k2HBPYdsy5WQpcSGogbIkCd0IOI3zreI/jvpV8Oy3DpdPpUQhwzQhOaCDKIoXCka+efE/F1LEDd0MGwvyZrhPoRCKxSAFwk+8rhrLWQB/FdtiNGDWW4IS6I8At9pbTuAbiPmUi0L1w8K3iPsDuJ7gfiLHDMpxIlaiRR7ifqhNo9NxCJZs5LTUQtlKBO8R6zhpcMpmsQIAWCSekQPq8Xu+wPxVoXFcrEnWYfN2WEwSCkyvrAYfjGih0i8ORBp4lX6cKxxaELbgJEg4g90VW7IRAo+wI+b7Dt9EO3D0CaONwXANVONJAn8nuccw2HB6cJOHEWcBaEWicl+o0UGQtlj9uxHAawQkNRA9ct7h7nNQJdEHJJgLcpUCtyDYqdQINmZmh7B4JpoGLdRqINtbYyUz2UKDHHI408LaRQJul96SBp3QCXfAhtY5nuKpAq7sHytIsg64y0UB7cAT461s1EAiMZb2aMxJodfdQNRBlZ3QCbRvQ5/NVMMArYrEYCPRFAnjF4ShOg+NwuiEuJIOmNL6S9tY+GuhE+t67SHA9XpOkauFYnBr06txifdM2E8AT2CYBChuHsrVMvNtRNrskP3toF2lRfuxwa0OdmSX9VZbNZgdhHu4SH88iS4G9A9RN5G57LafiNo6fpCgIPXePxwYAAAAASUVORK5CYII=" alt="" />'
			+'<h4 style="display: inline">ATTACH FILES</h4>'
			+'<span style="margin-left: 100px">'
				+'<a class="popup-modal-dismiss" href="#">Close</a></span>'
				 +'<input type="file" name="file" style="margin: 10px auto" />' 
				 +'<input type="submit" class="btn btn-primary" style="float: right; width: 100px; margin-right: 10px" value="SUBMIT" />';
		
	$(function(){
					$('#wrapper').append(list);
					
					$('#write').on('click',function(){
						$('#wrapper').empty();
						$('#wrapper').append(write);
						
						$('#detail').on('click',function(){
							$('#wrapper').empty();
							$('#wrapper').append(detail);
							
							$('#update').on('click',function(){
								$('#wrapper').empty();
								$('#wrapper').append(update);
								
								$('#updateBoard').on('click',function(){
									$('#wrapper').empty();
									$('#wrapper').append(list);
								});
							});
							$('#wrapper').append(list);
							$('#upload').on('click',function(){
								$('#wrapper').empty();
								$('#wrapper').append(upload);
							});
						});
					});
				
				});
</script>
</html>