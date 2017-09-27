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
        
    <link rel="stylesheet" href="/resources/inOrder.css">    
        
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

		<div class="back">
		<div>
				<a data-tab1="0" id='searchBtn'>
		all
		</a>
				<a data-tab1="1">
		set
		</a>
				<a data-tab1="2">
		bugger
		</a>
				<a data-tab1="7">
		deleted
		</a>
<%-- 		<c:if test="${cri.tab1!=0}"> --%>
<!-- 		<a id='searchBtn'> -->
<!-- 		all -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
<%-- 		<c:if test="${cri.tab1==0}"> --%>
<!-- 		<a class='check' id='searchBtn'> -->
<!-- 		all -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
<%-- 				<c:if test="${cri.tab1!=1}"> --%>
<!-- 		<a data-tab1="1"> -->
<!-- 		set -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
<%-- 		<c:if test="${cri.tab1==1}"> --%>
<!-- 		<a class='check' data-tab1="1"> -->
<!-- 		set -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${cri.tab1!=2}"> --%>
<!-- 		<a data-tab1="2"> -->
<!-- 		bugger -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${cri.tab1==2}"> --%>
<!-- 		<a class='check' data-tab1="2"> -->
<!-- 		bugger -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=3}"> --%>
<!-- 		<a data-tab1="3"> -->
<!-- 		king -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==3}"> --%>
<!-- 		<a class='check' data-tab1="3"> -->
<!-- 		king -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=4}"> --%>
<!-- 		<a data-tab1="4"> -->
<!-- 		side -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==4}"> --%>
<!-- 		<a class='check' data-tab1="4"> -->
<!-- 		side -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=5}"> --%>
<!-- 		<a data-tab1="5"> -->
<!-- 		drink -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==5}"> --%>
<!-- 		<a class='check' data-tab1="5"> -->
<!-- 		drink -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=6}"> --%>
<!-- 		<a data-tab1="6"> -->
<!-- 		snack -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==6}"> --%>
<!-- 		<a class='check' data-tab1="6"> -->
<!-- 		snack -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=7}"> --%>
<!-- 		<a data-tab1="7"> -->
<!-- 		deleted -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==7}"> --%>
<!-- 		<a class='check' data-tab1="7"> -->
<!-- 		deleted -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=8}"> --%>
<!-- 		<a data-tab1="8"> -->
<!-- 		other -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 		<c:if test="${bugger1VO.tab1==8}"> --%>
<!-- 		<a class='check' data-tab1="8"> -->
<!-- 		other -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1!=9}"> --%>
<!-- 		<a data-tab1="9"> -->
<!-- 		none -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
		
<%-- 				<c:if test="${bugger1VO.tab1==9}"> --%>
<!-- 		<a class='check' data-tab1="9"> -->
<!-- 		none -->
<!-- 		</a> -->
<%-- 		</c:if> --%>
			</div>

			<div>
			<a href="/sbugger1/register${pageMaker.makeSearch(pageMaker.cri.page)}&tab1=${cri.tab1}"><button>New Bugger</button></a>
			</div>

							
					<table class='white'>

							


						<c:forEach items="${list}" var="bugger1VO">

							
<!-- 								<td> -->
<%-- 								<c:if test="${bugger1VO.launch1}"><span class='blue'>new</span></span></c:if> --%>
<!-- 								</td> -->
<!-- 								<td> -->
<%-- 								<c:if test="${bugger1VO.best1}"><span class='red'>best</span></c:if> --%>
<!-- 								</td> -->
<!-- 								<td> -->
<%-- 								<c:if test="${bugger1VO.sold1}"><span class='out'>out</span></c:if> --%>
<!-- 								</td> -->

<!-- 								<div class="fileDrop"> -->

<%-- 									<img src="displayFile?fileName=${bugger1VO.photo1}"/> --%>
<!-- 								</div> -->

<!-- 								<span> -->
								
								<a href='/sbugger1/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bugger1No=${bugger1VO.bugger1No}'>
								<div class='relative hhh'>
								

								
								<div class="fileDrop">
								
								<span class="centered">
								<c:if test="${bugger1VO.sold1}">
									<span class='out'>out</span>
								</c:if>
								
								
								<c:if test="${bugger1VO.sold1!=true}">
									<img class = 'bottom' src="displayFile?fileName=${bugger1VO.photo1}"/>
									
								</c:if>
								</span>
								
								</div>
								
								<div class='zero'>
								
								<span>
								<c:if test="${bugger1VO.launch1}"><span class='blue'>new</span></c:if>
								</span>
								<span>
								<c:if test="${bugger1VO.best1}"><span class='red'>best</span></c:if>
								</span>
								
								</div>
								
<!-- 								<div class='hh'> -->
								<p class='hh'>
									
									${bugger1VO.koName1}
									
								</p>
								<p class='h'>
									${bugger1VO.price1}
								</p>
								
<!-- 								</div> -->
								
								</div>
								
								</a>
									
								
								

								
								
							

						</c:forEach>

					</table>
					
			
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

				<div class='box-body'>

					<select name="searchType">
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							KOREA</option>
							
						<option value="e"
							<c:out value="${cri.searchType eq 'e'?'selected':''}"/>>
							English</option>
					</select>
					<input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
						
					<button class='searchBtn'>Search</button>
					
				<input type='text' class = "hide" value="${pageMaker.cri.tab1}">
				</div>
				
				

  </div>
<script>
var result = '${msg}';

if (result == 'SUCCESS') {
	alert("처리가 완료되었습니다.");
	location.replace(self.location);

}
	if (result == 'fit'){
	alert("NONE tab(9) is inputed");
		location.replace(self.location);
	}

</script>


<script>


// for(var i=0; i<=2; i++){
// 	if('${bugger1VO.tab1}'==i){
	var i =$(".hide").val();
		$("[data-tab1="+i+"]").attr("class", "check")
// 		$("[data-tab1=1]").attr("class", "check")
// 		alert("aaa")
// 	}
	
// }



				$('a').on(
						"click",
						function(event) {
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

		
</script>
</html>

