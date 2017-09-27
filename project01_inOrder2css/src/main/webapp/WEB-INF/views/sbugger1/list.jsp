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
		




							
					<table>

						<tr>
							<th colspan="3"><a href="/sbugger1/register${pageMaker.makeSearch(pageMaker.cri.page)}&tab1=${cri.tab1}"><button>New Bugger</button></a></th>
							<th>MENU</th>
						</tr>

						<c:forEach items="${list}" var="bugger1VO">

							<tr>
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
								</a></td>
								
								
							</tr>

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
				
				

  </body>
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

