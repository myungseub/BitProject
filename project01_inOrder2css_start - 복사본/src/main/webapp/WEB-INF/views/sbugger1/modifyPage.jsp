<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@include file="../include/header.jsp"%> --%>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

<style>
.fileDrop {
  height: 100px;
  width: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: 0px;
  display: inline-block;
  
}
</style>


				<div class="box-header">
					<h3 class="box-koName1">MODIFY BUGGER</h3>
				</div>
				<!-- /.box-header -->

<form role="form" method="post" id="registerForm" action="modifyPage">

	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

	

				<c:if test="${bugger1VO.tab1==1}">
		<input type="radio" id="email1" name="tab1" value="1" checked/>
	 	<label for="email1">set</label>
	 	</c:if>
	 	<c:if test="${bugger1VO.tab1!=1}">
		<input type="radio" id="email1" name="tab1" value="1" />
	 	<label for="email1">set</label>
	 	</c:if>
	 	
				<c:if test="${bugger1VO.tab1==2}">
	 	<input type="radio" id="email2" name="tab1" value="2" checked/>
	 	<label for="email2">bugger</label>
	 	</c:if>
	 	<c:if test="${bugger1VO.tab1!=2}">
	 	<input type="radio" id="email2" name="tab1" value="2"/>
	 	<label for="email2">bugger</label>
	 	</c:if>
				<c:if test="${bugger1VO.tab1==3}">
		<input type="radio" id="email1" name="tab1" value="3" checked/>
	 	<label for="email1">king</label>
		</c:if>
	 	<c:if test="${bugger1VO.tab1!=3}">
		<input type="radio" id="email1" name="tab1" value="3" />
	 	<label for="email1">king</label>
	 	</c:if>
				<c:if test="${bugger1VO.tab1==4}">
	 	<input type="radio" id="email2" name="tab1" value="4" checked/>
	 	<label for="email2">side</label>
	 	</c:if>
	 	<c:if test="${bugger1VO.tab1!=4}">
	 	<input type="radio" id="email2" name="tab1" value="4"/>
	 	<label for="email2">side</label>
		</c:if>
				<c:if test="${bugger1VO.tab1==5}">
		<input type="radio" id="email1" name="tab1" value="5" checked/>
	 	<label for="email1">drink</label>
		</c:if>
	 	<c:if test="${bugger1VO.tab1!=5}">
		<input type="radio" id="email1" name="tab1" value="5" />
	 	<label for="email1">drink</label>
		</c:if>
				<c:if test="${bugger1VO.tab1==6}">
	 	<input type="radio" id="email2" name="tab1" value="6" checked/>
	 	<label for="email2">snack</label>
	 	</c:if>
	 	<c:if test="${bugger1VO.tab1!=6}">
	 	<input type="radio" id="email2" name="tab1" value="6"/>
	 	<label for="email2">snack</label>
		</c:if>
		
		<c:if test="${bugger1VO.tab1==7}">
		<input type="radio" id="email1" name="tab1" value="7" checked/>
	 	<label for="email1">deleted</label>
		</c:if>
	 	<c:if test="${bugger1VO.tab1!=7}">
		<input type="radio" id="email1" name="tab1" value="7" />
	 	<label for="email1">deleted</label>
	 	</c:if>
	 	
	 	<c:if test="${bugger1VO.tab1==8}">
	 	<input type="radio" id="email1" name="tab1" value="8"/> 
		</c:if>
	 	<c:if test="${bugger1VO.tab1!=8}">
 	 	<label for="email1">other</label>
		</c:if>
	 	
	 	<hr>
	 	
	 	<c:if test="${bugger1VO.launch1}">
	 	<input type="checkbox" id="lang1" name="launch1" value="1" checked/> 
	 	</c:if>
	 	<c:if test="${!bugger1VO.launch1}">
	 	<input type="checkbox" id="lang1" name="launch1" value="1"/> 
	 	</c:if>
	 	<label for="lang1">new</label>
	 	
	 	
	 	<c:if test="${bugger1VO.best1}">
	 	<input type="checkbox"  id="lang2" name="best1" value="1" checked/>
	 	 </c:if>
	 	 
	 	<c:if test="${!bugger1VO.best1}">
	 	<input type="checkbox"  id="lang2" name="best1" value="1"/> 
	 	</c:if>
	 	<label for="lang2">best</label>
	 	
	 	<c:if test="${bugger1VO.sold1}">
	 	<input type="checkbox"  id="lang3" name="sold1" value="1" checked/> 
	 	</c:if>

	 	
	 	<c:if test="${!bugger1VO.sold1}">
	 	<input type="checkbox"  id="lang3" name="sold1" value="1"/> 
	 	</c:if>
	 	<label for="lang3">out</label>

		<hr>


			<div class="form-group">
				<label for="exampleInputEmail1">Bugger1 No</label> <input type="text"
					name='bugger1No' class="form-control" value= "${bugger1VO.bugger1No}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">name</label>
				<input type="text" name='koName1' class='form-control' value="${bugger1VO.koName1}">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">E-name</label>
				<input type="text" class="form-control" name="engName1" value="${bugger1VO.engName1}">
			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1">price</label>
				 <input	type="text" name="price1" class="price1" value="${bugger1VO.price1}">
			</div>
				
			<input type='hidden' name="photo1" id='photo1' data-ori="${bugger1VO.photo1}">
			




<div id='clear'><div class="fileDrop"></div></div>


						


	<div>
	
			<hr>

		
 		<c:if test="${!empty bugger1VO.photo1}">
		
			  <div id = 'memory'>
			  <a>
			  <img src="displayFile?fileName=${bugger1VO.photo1}"/>
			  </a><small data-src="${bugger1VO.photo1}">X</small></div>
		</c:if>
		

	</div>
    <button type="submit" class="btn btn-primary">SAVE</button> 
</form>
	
    <button class="btn btn-warning">CANCEL</button>

		<c:if test="${bugger1VO.tab1!=7}">
		<a href="/sbugger1/modifyPageTab?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id='to'>DELETE</button>
		</a>
		</c:if>
		
        <c:if test="${bugger1VO.tab1==7}">
	    <a href="/sbugger1/removePage?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id="removeBtn">DELETE</button>
		</a>
		</c:if>

			





 
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>



<script>



function closer() {
	var k=0;
		function addCloser(){
		k++;
		return k;
		}
	return addCloser;
}
var abc = closer();

function closer2() {
	var k=0;
		function addCloser(){
		k++;
		return k;
		}
	return addCloser;
}
var abc2 = closer2();


$("#to").on("click", function(event){
	alert("deleted 탭으로 이동합니다.");
})

	$("#memory small").on("click", function(){
		   $('#memory small').remove();
		   $("#memory a").remove();
		   abc2();

		
	})
	

	
	$("#removeBtn").on("click", function(){
		
		   $.ajax({
			   url:"deleteFile",
			   type:"post",
			   data: {fileName:$("small").attr("data-src")},
			   dataType:"text",
			   success:function(result){
				   if(result=="deleted"){
					   $.ajax({
						   url:"deleteFile",
						   type:"post",
						   data: {fileName:$("#photo1").attr("data-ori")},
						   dataType:"text",
						   success:function(result){
							   if(result=="deleted"){
								   
								   alert("삭제가 완료됨");
							   }
							   
				 			}
					   });
					   
				   }
				   
	 			}
		   });
		
	
	});
	//cancel
	$(".btn-warning").on("click", function(){


			if(abc()!=1) {
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("small").attr("data-src")},
				   dataType:"text",
				   success:function(result){
					   if(result=="deleted"){
						   
						   $("#photo1").val($("#photo1").attr("data"));
					   }
					   
		 			}
			   });
			}
		
		
		
		   
	  self.location = "/sbugger1/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
			  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
	});
	//save
	$(".btn-primary").on("click", function(){


		if(abc2()==1 && abc()==1){
			$("#photo1").val($("#photo1").attr("data-ori"));
		}

		if(abc2()==3 && abc()==1){
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("#photo1").attr("data-ori")},
				   dataType:"text",
				   
			   });
		}
		
		if($("#photo1").attr("data-ori")!=undefined && $("#photo1").attr("data-ori")!=null){
			if(abc()>=4) {
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("#photo1").attr("data-ori")},
				   dataType:"text",
				   success:function(result){
					   if(result=="deleted"){
						   
					   }
					   
		 			}
			   });
			   
			    
			  
			}
		}
	})


		

		$("#clear").on("click", "small", function(event){
			
				 var that = $(this);
			
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$(this).attr("data-src")},
				   dataType:"text",
				   success:function(result){
					   if(result == 'deleted'){
						   $('.fileDrop div').remove();
						   $("#clear small").remove();
						   $('#photo1').val("");
					   }
				   }
			   });
		});
		
		
		


$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();	
	var files = event.originalEvent.dataTransfer.files;
	var file = files[0];
	
	var formData = new FormData();
	
	formData.append("file", file);
	

		   $.ajax({
			   url:"fileCheck",
			   type:"post",
			   processData: false,
			   contentType: false,
			   data: formData,
			   dataType:"text",
			   success:function(result){
					if(result=="OK"){
						
								if(abc()!=1) {
								   
									   $.ajax({
										   url:"deleteFile",
										   type:"post",
										   data: {fileName:$("small").attr("data-src")},
										   dataType:"text",
										   success:function(result){
											   if(result == 'deleted'){
												   $('.fileDrop div').remove();
												   $("#clear small").remove();
											   }
										   }
									   });
							
								}
								else
		 							{$('.fileDrop div').remove();
									   $("#clear small").remove();}
						
						
								$.ajax({
									  url: '/uploadAjax',
									  data: formData,
									  dataType:'text',
									  processData: false,
									  contentType: false,
									  type: 'POST',
									  success: function(data){
										  
										  var str ="";
										  
										  if(checkImageType(data)){
											  str ="<div><a href=displayFile?fileName="+getImageLink(data)+">"
													  +"<img src='displayFile?fileName="+data+"'/></a></div>";
// 													  +"</a><small data-src="+data+">X</small></div>";
													  
											$('#photo1').val(data);
	
										  }
										  
	// 									  else{
	// 										  return;
	// 									  }
										  $('.fileDrop').parent("div").append("<small data-src="+data+">X</small>");
							
										  
										  $(".fileDrop").append(str);
									  }
									
								});
					}else{
						alert("이미지 파일이 아니라 업로드가 되지 않습니다.");
							}
			   }
		   });

// 	}
});

function getOriginalName(fileName){	

	if(checkImageType(fileName)){
		return;
	}
	
	var idx = fileName.indexOf("_") + 1 ;
	return fileName.substr(idx);
	
}

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


$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	
	if($(".koName1").val()=="") {$(".koName1").val("_")}
	if($(".price1").val()=="") {alert("가격까지 입력해주세요.")}
	else{
	that.get(0).submit();
		
	}
	

});


</script>

