<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>


<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- Main content -->
    <style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     }
     
  	
  	
    </style>


				<div class="box-header">
					<h3 class="box-title">BUGGER</h3>
				</div>

				<form role="form" action="modifyPage" method="post">

					${bugger1No}
					<input type='hidden' name='bugger1No' value="${bugger1No}">
					<input type='hidden' name='page' value="${cri.page}">
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">
		<table>
		<tr>
			<td colspan='3'>
			<div>
			<c:if test="${bugger1VO.tab1==1}">set</c:if>
			<c:if test="${bugger1VO.tab1==2}">bugger</c:if>
			<c:if test="${bugger1VO.tab1==3}">king</c:if>
			<c:if test="${bugger1VO.tab1==4}">side</c:if>
			<c:if test="${bugger1VO.tab1==5}">drink</c:if>
			<c:if test="${bugger1VO.tab1==6}">snack</c:if>
			<c:if test="${bugger1VO.tab1==7}">deleted</c:if>
			<c:if test="${bugger1VO.tab1==8}">other</c:if>
			<c:if test="${bugger1VO.tab1==9}">none</c:if>
			</div>
			</td>
		</tr>
		<tr>
			<td >
			<c:if test="${bugger1VO.launch1}">new</c:if>
			</td>
			<td>
			<c:if test="${bugger1VO.best1}">best</c:if>
			</td>
			<td>
			<c:if test="${bugger1VO.sold1}">out</c:if>
			</td>
		</tr>
			
	 	
		</table>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">name</label> <input type="text"
							name='koName1' class="form-control" value="${bugger1VO.koName1}"
							readonly="readonly">
							
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">E-name</label>
						<input type="text" name="engName1"
							readonly="readonly" value="${bugger1VO.engName1}"></input>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">price</label>
						<input type="text"
							name="price1" class="form-control" value="${bugger1VO.price1}"
							readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->
				
  <div class="box-footer">
    
    <div><hr></div>

    <ul class="mailbox-attachments clearfix uploadedList">
    </ul>
    
    	<c:if test="${!empty bugger1VO.photo1}">
		  <div><a>
		  
		  <img src="displayFile?fileName=${bugger1VO.photo1}"/>
		  </a>
		  </div>
		</c:if>
		
    <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
  </div>
</form>
    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
    	<c:if test="${bugger1VO.tab1!=7}">
	    <a href="/sbugger1/modifyPageTab?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id='to'>DELETE</button>
		</a>
		</c:if>
		
        <c:if test="${bugger1VO.tab1==7}">
	    <a href="/sbugger1/removePage?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id="delbtn" >DELETE</button>
		</a>
		</c:if>
		
    





<!-- <script id="templateAttach" type="text/x-handlebars-template"> 
<li data-src='{{photo1}}'>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script>   -->




<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#to").on("click", function(event){
		alert("deleted 탭으로 이동합니다.");
	})
	$("#delbtn").on("click", function(event){
		
			  		 
		   $.ajax({
			   url:"deleteFile",
			   type:"post",
			   data: {fileName:'${bugger1VO.photo1}'},
			   dataType:"text",
		   });
		   
	})
		
		
	$("#modifyBtn").on("click", function(e){
		e.preventDefault();
	
		formObj.attr("action", "/sbugger1/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	

	
	});	
	
	$("#goListBtn ").on("click", function(){
		  self.location = "/sbugger1/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
		  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
	});
	
	var bugger1No = ${bugger1VO.bugger1No};
// 	var template = Handlebars.compile($("#templateAttach").html());	
// 	$.getJSON("/sbugger1/getAttach/"+bugger1No,function(list){
// 		$(list).each(function(){		
// 			var fileInfo = getFileInfo(this);			
// 			var html = template(fileInfo);			
// 			 $(".uploadedList").append(html);			
// 		});
// 	});
	

	$("a").on("click", function(event){
		
		var bbb = getImageLink("${bugger1VO.photo1}")
 		self.location = "displayFile?fileName="+bbb;
	})
	
	
	
	function getImageLink(fileName){
		
		if(!checkImageType(fileName)){
			return;
		}
		var front = fileName.substr(0,12);
		var end = fileName.substr(14);
		
		return front + end;
		
	}
		
		
	function checkImageType(fileName){
		
		var pattern = /jpg|gif|png|jpeg/i;
		
			
		return fileName.match(pattern);
		

	}
		
	


</script>






