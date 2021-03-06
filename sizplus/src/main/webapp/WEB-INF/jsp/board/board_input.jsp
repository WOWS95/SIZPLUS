<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>시즈닝플러스</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="Bootstrap News Template - Free HTML Templates" name="keywords">
	<meta content="Bootstrap News Template - Free HTML Templates" name="description">
	<link rel="stylesheet" href="/lib/board/assets/css/fontawesome.css">
	<link rel="stylesheet"href="/lib/board/assets/css/templatemo-sixteen.css">
	<link rel="stylesheet" href="/lib/board/assets/css/owl.css">
	<script src="/lib/board/vendor/jquery/jquery.min.js"></script>
	<script src="/lib/board/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/lib/board/assets/js/custom.js"></script>
	<script src="/lib/board/assets/js/owl.js"></script>
	<script src="/lib/board/assets/js/slick.js"></script>
	<script src="/lib/board/assets/js/isotope.js"></script>
	<script src="/lib/board/assets/js/accordions.js"></script>
	<style>
	.works_table thead th {
    padding: 15px 10px;
    font-size: 16px;
    color: #333;
    font-weight: bold;
	}
	.works_table thead tr {
    border-top: solid 2px #000000;
    border-bottom: solid 1px #000000;
	}
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/userLayout/top.jsp" %>
	<form name="listForm" id="listForm">
	<div class="products">
		<div class="container">
			<div class="col-md-12">
				<div class="filters">
					<ul>
						<li class="" data-filter="*" style="float: left;">
						<h3>
							<c:if test="${commandMap.get('bbsId') eq 'free' }">
							<input type="hidden" name="bbsId" value="free" />
							<span>자유게시판</span>
							</c:if>
							<c:if test="${commandMap.get('bbsId') eq 'life' }">
							<input type="hidden" name="bbsId" value="userTip" />
							<span>라이프스타일</span>
							</c:if> 
				  		</h3>
						</li>
						<li class="active" data-filter="*" ></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<table class="works_table" style="width: 100%;">
					<colgroup>
						<col style="width:15%"/>
						<col/>
					</colgroup>
					<tbody>
						<tr style="border-top: solid 2px #000000; border-bottom: solid 1px #000000;">
							<th style="text-align: center;">닉네임</th>
							<td><input type="text" name="input_nm" id="input_nm" maxlength="150"  style="width:100%" /></td>
						</tr>
						<tr style="border-top: solid 2px #000000; border-bottom: solid 1px #000000;">
							<th style="text-align: center;">비밀번호</th>
							<td><input type="password" name="password" id="password" maxlength="150"  style="width:100%" /></td>
						</tr>
						<tr style="border-top: solid 2px #000000; border-bottom: solid 1px #000000;">
							<th style="text-align: center;">제목</th>
							<td><input type="text" name="title" id="title" maxlength="150"  style="width:100%" /></td>
						</tr>
						<tr style="border-top: solid 2px #000000; border-bottom: solid 1px #000000;">
							<th style="text-align: center;">내용</th>
							<td><textarea type="text" name="contents" id="contents" maxlength="150"  style="width:100%;height: 200px;" ></textarea></td>
						</tr>
					</tbody>
				</table>
        	</div>
        	<div class="col-md-12">
				<div class="filters" style="border-bottom: 0px;">
					<br>
					<ul>
						<li class="active" data-filter="*" ></li>
						<li data-filter=".gra" class="" style="float: right;" onclick="fn_input();">등록</li>
					</ul>
				</div>
			</div>
		</div>
    </div>
	<%@ include file="/WEB-INF/jsp/userLayout/bottom.jsp" %>
</body>
<script type="text/javascript">
/* pagination 페이지 링크 function */
function fn_input(){
	var frm = document.listForm;
	frm.action = "/board/board_input_proc.do";
	frm.method = "post";
	frm.submit();
}
</script>
</html>