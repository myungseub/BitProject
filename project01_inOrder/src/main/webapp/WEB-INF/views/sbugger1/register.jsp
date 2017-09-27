<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script> 
<%-- <%@include file="../include/header.jsp"%> --%>


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

<!-- Main content -->
<!-- <section class="content"> -->
<!-- 	<div class="row"> -->
<!-- 		<!-- left column -->
<!-- 		<div class="col-md-12"> -->
<!-- 			<!-- general form elements -->
<!-- 			<div class="box box-primary"> -->
<!-- 				<div class="box-header"> -->
<%-- 					<h3 class="box-title">REGISTER BOARD ${login }</h3> --%>
<!-- 				</div> -->
				<!-- /.box-header -->


<form id='registerForm' role="form" method="post" action='register'>

		
				<c:if test="${cri.tab1==1}">
		<input type="radio" id="email1" name="tab1" value="1" checked/>
	 	<label for="email1">set</label>
	 	</c:if>
	 	<c:if test="${cri.tab1!=1}">
		<input type="radio" id="email1" name="tab1" value="1" />
	 	<label for="email1">set</label>
	 	</c:if>
	 	
				<c:if test="${cri.tab1==2}">
	 	<input type="radio" id="email2" name="tab1" value="2" checked/>
	 	<label for="email2">bugger</label>
	 	</c:if>
	 	<c:if test="${cri.tab1!=2}">
	 	<input type="radio" id="email2" name="tab1" value="2"/>
	 	<label for="email2">bugger</label>
	 	</c:if>
				<c:if test="${cri.tab1==3}">
		<input type="radio" id="email1" name="tab1" value="3" checked/>
	 	<label for="email1">king</label>
		</c:if>
	 	<c:if test="${cri.tab1!=3}">
		<input type="radio" id="email1" name="tab1" value="3" />
	 	<label for="email1">king</label>
	 	</c:if>
				<c:if test="${cri.tab1==4}">
	 	<input type="radio" id="email2" name="tab1" value="4" checked/>
	 	<label for="email2">side</label>
	 	</c:if>
	 	<c:if test="${cri.tab1!=4}">
	 	<input type="radio" id="email2" name="tab1" value="4"/>
	 	<label for="email2">side</label>
		</c:if>
				<c:if test="${cri.tab1==5}">
		<input type="radio" id="email1" name="tab1" value="5" checked/>
	 	<label for="email1">drink</label>
		</c:if>
	 	<c:if test="${cri.tab1!=5}">
		<input type="radio" id="email1" name="tab1" value="5" />
	 	<label for="email1">drink</label>
		</c:if>
				<c:if test="${cri.tab1==6}">
	 	<input type="radio" id="email2" name="tab1" value="6" checked/>
	 	<label for="email2">snack</label>
	 	</c:if>
	 	<c:if test="${cri.tab1!=6}">
	 	<input type="radio" id="email2" name="tab1" value="6"/>
	 	<label for="email2">snack</label>
		</c:if>
		
		<c:if test="${cri.tab1==7}">
		<input type="radio" id="email1" name="tab1" value="7" checked/>
	 	<label for="email1">deleted</label>
		</c:if>
	 	<c:if test="${cri.tab1!=7}">
		<input type="radio" id="email1" name="tab1" value="7" />
	 	<label for="email1">deleted</label>
	 	</c:if>
	 	
	 	<c:if test="${cri.tab1==8}">
	 	<input type="radio" id="email1" name="tab1" value="8" checked/> 
		</c:if>
	 	<c:if test="${cri.tab1!=8}">
 	 	<label for="email1">other</label>
		</c:if>
<!-- 		<input type="radio" id="email1" name="tab1" value="1" /> -->
<!-- 	 	<label for="email1">set</label> -->
<!-- 	 	<input type="radio" id="email1" name="tab1" value="2"/> -->
<!-- 	 	<label for="email1">bugger</label> -->
<!-- 		<input type="radio" id="email1" name="tab1" value="3" /> -->
<!-- 	 	<label for="email1">king</label> -->
<!-- 	 	<input type="radio" id="email1" name="tab1" value="4"/> -->
<!-- 	 	<label for="email1">side</label> -->
<!-- 		<input type="radio" id="email1" name="tab1" value="5" /> -->
<!-- 	 	<label for="email1">drink</label> -->
<!-- 	 	<input type="radio" id="email1" name="tab1" value="6"/> -->
<!-- 	 	<label for="email1">snack</label> -->
<!-- 		<input type="radio" id="email1" name="tab1" value="7" /> -->
<!-- 	 	<label for="email1">deleted</label> -->
<!-- 	 	<input type="radio" id="email1" name="tab1" value="8"/>  -->
<!--  	 	<label for="email1">other</label> -->
	 	<hr>
	 	
	 	
	 	<input type="checkbox" id="lang1" name="launch1" value="1"/> 
	 	<label for="lang1">new</label>
	 	
	 	<input type="checkbox"  id="lang1" name="best1" value="1"/> 
	 	<label for="lang1">best</label>
	 	
	 	<input type="checkbox"  id="lang1" name="sold1" value="1"/> 
	 	<label for="lang1">out</label>
	 	
	 	
	 	
	 	<hr>
	 	
	 	
		<br>
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">name</label>
			<input type="text"
				name='koName1' class="koName1" >
		</div>
		
		<div class="form-group">
			<label for="exampleInputPassword1">E-name</label>
				
			<input type="text" class="form-control" name="engName1" ></input>
			
<!-- 			<textarea class="form-control" name="content" rows="3" -->
<!-- 				placeholder="Enter ..."></textarea> -->
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">price</label>
			<input type="text"
				name='price1' class="price1" >
		</div>
		
		<div>
			<input type='hidden' name="photo1" id='photo1'>
		</div>
		

		
	</div>
	



	
			<div id='clear'><div class="fileDrop"></div></div>





	<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>

		<button type="submit" class="btn btn-primary">Submit</button>

	</div>
</form>

<!-- <form method="post" > -->
	<button class="btn btn-warning">CANCEL</button>
<!-- </form> -->

<%-- 
			</div>			<!-- /.box -->
		</div>		<!--/.col (left) -->

	</div>	<!-- /.row -->
</section><!-- /.content -->
</div><!-- /.content-wrapper -->
 --%>
 

 
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>




<script>
// var result = '${msg}';

// if (result == "fail") {
// 	alert("tab메뉴를 선택하지 않았습니다");
// }
// function goLogin(){
// 	self.location ="/user/login";
// }
		
		
// 		$(".btn-primary").on("click", function(event){
// 			alert(tab1);
// 			if($("#email1").val()==0){alert("tab메뉴를 선택하지 않았습니다");
// 			event.preventDefault();}
			
			
// 		})


	//cancel
	$(".btn-warning").on("click", function(){

			
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("small").attr("data-src")},
				   dataType:"text",
// 				   success:function(result){
// 					   if(result=="deleted"){
						   
// 						   $("#photo1").val($("#photo1").attr("data"));
// 					   }
					   
// 		 			}
			   });
			
// 				alert(${cri.tab1}); 
				  self.location = "/sbugger1/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
						  "&searchType=${cri.searchType}&keyword=${cri.keyword}&tab1=${cri.tab1}";
		
		
		   
	});
	
	
		
		$(".btn-primary").on("click", function(event){
			if($(".koName1").val()=="") {$(".koName1").val()=" "};
// 			  self.location = "/sbugger1/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
// 			  "&searchType=${cri.searchType}&keyword=${cri.keyword}&tab1=${bugger1VO.tab1}";
			
		});
		
		
		$("#clear").on("click", "small", function(event){
			
			 var that = $(this);
		
		   $.ajax({
			   url:"deleteFile",
			   type:"post",
			   data: {fileName:$(this).attr("data-src")},
			   dataType:"text",
			   success:function(result){
				   if(result == 'deleted'){
					   that.parent("div").remove();
					   $('#photo1').val("");
				   }
			   }
		   });
	});
		
		
		

// var template = Handlebars.compile($("#template").html());

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
					
				
				
// 					if(files!=null ) {
						   $.ajax({
							   url:"deleteFile",
							   type:"post",
							   data: {fileName:$("small").attr("data-src")},
							   dataType:"text",
							   success:function(result){
								   if(result == 'deleted'){
// 									   $("small").parent("div").remove();
									   $('.fileDrop span').remove();
									   $("#clear small").remove();
								   }
							   }
						   });
// 					}
					
				
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
								  str ="<span><a href=displayFile?fileName="+getImageLink(data)+">"
										  +"<img src='displayFile?fileName="+data+"'/></a></span>";
									
																  
// 										  +"</a><small data-src="+data+">X</small></div>";
// 								  str ="<div><a href=displayFile?fileName="+getImageLink(data)+">"
// 										  +"<img src='displayFile?fileName="+data+"'/>"
// 										  +"</a><small data-src="+data+">X</small></div>";
										  
								$('#photo1').val(data);
							  }
							  
							  else{
								  return;
							  }
							  
				// 			  else{
				// 				  str = "<div><a href='displayFile?fileName="+data+"'>" 
				// 						  + getOriginalName(data)+"</a>"
				// 						  +"<small data-src="+data+">X</small></div></div>";
				// 			  }
							  
							  $(".fileDrop").append(str);
							  $('.fileDrop').parent("div").append("<small data-src="+data+">X</small></div>");
						  }
						});	
				}else{
					alert("이미지 파일이 아니라 업로드가 되지 않습니다.");
						}
		   }
	   });
	});


function getOriginalName(fileName){	

	if(checkImageType(fileName)){
		return;
	}
	
	var idx = fileName.indexOf("_") + 1 ;
	return fileName.substr(idx);
	
}


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

// 	$.ajax({
// 		  url: '/uploadAjax',
// 		  data: formData,
// 		  dataType:'text',
// 		  processData: false,
// 		  contentType: false,
// 		  type: 'POST',
// 		  success: function(data){
			  
// 			  var fileInfo = getFileInfo(data);
			  
// 			  var html = template(fileInfo);
			  
// 			  $(".uploadedList").append(html);
// 		  }
// 		});	
// });



$("#registerForm").submit(function(event){
	event.preventDefault();

// 	alert($("input[type=radio][name=tab1]:checked").val());
// 	if($("input[type=radio][name=tab1]:checked").val()==undefined){alert("tab메뉴를 선택하세요");
// 	} else{
	
	var that = $(this);
	
	if($(".koName1").val()=="") {$(".koName1").val("_")}
	if($(".price1").val()=="") {alert("가격까지 입력해주세요.")}
	else{
	that.get(0).submit();
		
	}

	
});



</script>

 

<%-- <%@include file="../include/footer.jsp"%> --%>
