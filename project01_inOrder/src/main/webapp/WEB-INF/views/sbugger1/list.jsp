<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>bugger menu</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

	<style>
	
	</style>
  </head>
  

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<%-- <%@include file="../include/header.jsp"%> --%>


<!-- <section class="content"> -->
<!-- 	<div class="row"> -->

		<!-- left column -->






<section class="content">

		<div class="col-md-12">
			<!-- general form elements -->
<!-- 			<div class='box'> -->

		<a id='searchBtn'>
		all
		</a>
		<a data-tab1="1">
		set
		</a>
		<a data-tab1="2">
		bugger
		</a>
		<a data-tab1="3">
		king
		</a>
		<a data-tab1="4">
		side
		</a>
		<a data-tab1="5">
		drink
		</a>
		<a data-tab1="6">
		snack
		</a>
		<a data-tab1="7">
		deleted
		</a>
		<a data-tab1="8">
		other
		</a>
		<a data-tab1="9">
		none
		</a>
		

				<div class="box-header with-border">
					
				</div>



<!-- 			</div> -->
							
			<div class="box">
<!-- 				<div class="box-header with-border"> -->
<!-- 					<h3 class="box-title">LIST PAGING</h3> -->
<!-- 				</div> -->
				<div class="box-body">
					<table class="table-bordered">

						<tr>
							<th colspan="3"><button><a id='newBtn' href="/sbugger1/register${pageMaker.makeSearch(pageMaker.cri.page)}&tab1=${cri.tab1}">New Bugger</a></button></th>
<!-- 							<th style="width: 10px">BNO</th> -->
							<th>MENU</th>
<!-- 							<th>WRITER</th> -->
<!-- 							<th>REGDATE</th> -->
<!-- 							<th style="width: 40px">VIEWCNT</th> -->
						</tr>

						<c:forEach items="${list}" var="bugger1VO">

							<tr>
<%-- 								<td>${bugger1VO.bugger1No}</td> --%>
								<td>
								<c:if test="${bugger1VO.launch1}">new</c:if><c:if test="${!bugger1VO.launch1}"></c:if>
								</td>
								<td>
								<c:if test="${bugger1VO.best1}">best</c:if><c:if test="${!bugger1VO.best1}"></c:if>
								</td>
								<td>
								<c:if test="${bugger1VO.sold1}">out</c:if><c:if test="${!bugger1VO.sold1}"></c:if>
								</td>
								<td>
								<a href='/sbugger1/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bugger1No=${bugger1VO.bugger1No}'>
										${bugger1VO.koName1}
<%-- 										<strong>[ ${bugger1VO.replycnt} ]</strong> --%>
								</a></td>
								
								
<%-- 								<td>${bugger1VO.writer}</td> --%>
<%-- 								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" --%>
<%-- 										value="${bugger1VO.regdate}" /></td> --%>
<%-- 								<td><span class="badge bg-red">${bugger1VO.viewcnt }</span></td> --%>
								 
							</tr>

						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->

		<div>
			
<!-- 			<div class="box-footer"> -->

<!-- 					<div class="text-center"> -->
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
<!-- 					</div> -->

<!-- 			</div> -->
				<!-- /.box-footer-->
		</div>
		</div>
		<!--/.col (left) -->

	<!--</div>	<!-- /.row -->
				<div class='box-body'>

					<select name="searchType">
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							KOREA</option>
							
						<option value="e"
							<c:out value="${cri.searchType eq 'e'?'selected':''}"/>>
							English</option>
							<%--
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							Writer</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer</option>
							--%>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button class='searchBtn'>Search</button>
				<input type='text' class = "hide" value="${pageMaker.cri.tab1}">
				</div>
				
				

</section>
  </body>
<script>
// $(document).ready(function(){
var result = '${msg}';

if (result == 'SUCCESS') {
	alert("처리가 완료되었습니다.");
	location.replace(self.location);

}
	if (result == 'fit'){
	alert("NONE tab(9) is inputed");
		location.replace(self.location);
	}

// });
// $(document).ready(function(){
// // 	if (result = 'memory'){
// // 	var result = null;
// // 	} else
// 	alert("11");
// 	if(result!="memory"){
// 	alert("22");
// 	var result = '${msg}';
// // 	alert('${msg}');
	
	

// 	if (result == 'SUCCESS') {
// 		alert("처리가 완료되었습니다.");
// // 		location.replace(self.location);
// 	} 
// // 	else if (result == "fail") {
// // 		alert("tab메뉴를 선택하지 않았습니다");
// // // 		location.replace(self.location);
// // 	}
// 	else if (result == 'fit'){
// 		alert("NONE tab(9) is inputed");
// // 		location.replace(self.location);
// 	}
// // })
// // 	if (result != null)	{
// // 		result = 'memory';
// // 	}
	
// // 	if (result == "default") {
		
// // 	}
//  	if(result!=null){ 	alert("33");result="memory";
// //  	self.location = "/sbugger1/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
// // 			  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
// 	}
// 	}
//  	alert("end");
// 	});
</script>

<script>
$(document).ready(function(){
$("td").css({"border":"1px solid #345"
	, "min-width":20
	, "text-align":"center"});
// });
$("#newBtn").css({background:"#E6F8E0",color:"#000000",border:"1px solid #345"});

});
</script>

<script>
			

				$('a').on(
						"click",
						function(event) {
							
// 							$("input.hide").val($(this).attr("data-tab1"));
// 							alert($("input.hide").val());
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}' /*1page*/
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val()
									+ "&tab1=" + $(this).attr("data-tab1");
							

						});


			
	
	
				$('a#searchBtn').on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}' /*1page*/
// 									+ "&searchType="
// 									+ $("select option:selected").val()
// 									+ "&keyword=" + $('#keywordInput').val()
									+ "&tab1=0";

						});
	
				$(".searchBtn").on(
						"click",
						function(event) {

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}' /*1page*/
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val()
									+ "&tab1="+$(".hide").val();

						});

// 				$('#newBtn').on("click", function(evt) {

// 					self.location = "register";

// 				});

		
</script>
</html>

<%-- <%@include file="../include/footer.jsp"%> --%>
