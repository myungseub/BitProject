<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@include file="../include/header.jsp"%> --%>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

<style>
/* .fileDrop { */
/*   width: 80%; */
/*   height: 100px; */
/*   border: 1px dotted gray; */
/*   background-color: lightslategrey; */
/*   margin: auto; */
  
/* } */
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
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
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
					name='bugger1No' class="form-control" value= ${bugger1VO.bugger1No}	readonly="readonly">
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
			




<!-- 		<div class="fileDrop"></div> -->
<div id='clear'><div class="fileDrop"></div></div>








		
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputEmail1">drag-in picture</label> -->
<!-- 							<div name='photo1' class="fileDrop"></div> -->
<!-- 						</div>	 -->
						
					</div>
					<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		
 		<c:if test="${!empty bugger1VO.photo1}">
		
			  <div id = 'memory'>
			  <a>
			  <img src="displayFile?fileName=${bugger1VO.photo1}"/>
			  </a><small data-src="${bugger1VO.photo1}">X</small></div>
		</c:if>
		
		</ul>

    <button type="submit" class="btn btn-primary">SAVE</button> 
	</div>
</form>
	
	
<!-- 	<form role="form" method="get" action="list"> -->

<%-- 	<input type='hidden' name='page' value="${cri.page}">  --%>
<%-- 	<input type='hidden' name='perPageNum' value="${cri.perPageNum}"> --%>
<%-- 	<input type='hidden' name='searchType' value="${cri.searchType}"> --%>
<%-- 	<input type='hidden' name='keyword' value="${cri.keyword}"> --%>
	
    <button class="btn btn-warning">CANCEL</button>
<!--     </form> -->

		<c:if test="${bugger1VO.tab1!=7}">
		<a href="/sbugger1/modifyPageTab?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id='to'>DELETE</button>
		</a>
		</c:if>
		
        <c:if test="${bugger1VO.tab1==7}">
	    <a href="/sbugger1/removePage?bugger1No=${bugger1VO.bugger1No}"><button type="submit" class="btn btn-danger" id="removeBtn">DELETE</button>
		</a>
		</c:if>

<%-- 	    <a href="/sbugger1/removePage?bugger1No=${bugger1VO.bugger1No}"><button class="btn btn-danger" id="removeBtn" >DELETE</button></a> --%>
<!-- 	    <button class="btn btn-danger" id="removeBtn" >DELETE</button> -->
			
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->




 
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- <script id="template" type="text/x-handlebars-template">


<li>
  <span class="mailbox-attachment-icon has-img">
  <img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	
	
	
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>


                
</script>     -->


<script>

// onload = function() {                                            // 페이지가 로드되면 자동으로 실행
//     var frm = document.form(0);                    // 처음 폼을 frm으로 정의
<%--     var value = “<%데이터베이스로 부터 받은 값%>”; --%>
// if( gender == “m” ) {
// frm.gender(0).checked = true;          // 배열로 표시가능
// } else {
// frm.gender(1).checked = true;
// }
// }


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

//   $(document).ready(function(){
	
//  	var formObj = $("form[role='form']");
	
//  	formObj.submit(function(event){
//  		event.preventDefault();
		
//  		alert("AAAAAAAAAAAAAAAAAAA");
 		
//  		var that = $(this);
		
// // 		var str ="";
// // 		$(".uploadedList .delbtn").each(function(index){
<%-- 			 str += "<input type='hidden' name='files[0]["+index+"]' value='"+$(this).attr("href") +"'> "; --%>
// // 		});
		
// // 		that.append(str);

// // 		console.log(str);
		
// 		alert(that.attr("action"));
		
//  		//that.get(0).submit();
//  	});
 	
//  });

$("#to").on("click", function(event){
	alert("deleted 탭으로 이동합니다.");
})

	$("#memory small").on("click", function(){
// 		   alert($("#memory a").length);
		   $('#memory small').remove();
		   $("#memory a").remove();
		   abc2();
// 		   alert($("#memory a").length);

		
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
//  		alert($("#photo1").attr("data-ori"));


		if(abc2()==1 && abc()==1){
			$("#photo1").val($("#photo1").attr("data-ori"));
		}
		
		if(abc2()==3 && abc()==2){
			
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("#photo1").attr("data-ori")},
				   dataType:"text",
				   
			   });
		}
		
		if($("#photo1").attr("data-ori")!=undefined && $("#photo1").attr("data-ori")!=null){
//  			alert(abc());
			if(abc()>=4) {
// 			alert($("#photo1").attr("data-ori"));
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$("#photo1").attr("data-ori")},
				   dataType:"text",
				   success:function(result){
					   if(result=="deleted"){
						   
// 						   $("#photo1").val($("#photo1").attr("data"));
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
// 	alert(files[0].getOriginalFilename());
	
	var formData = new FormData();
	
	formData.append("file", file);
	
// 	if(files!=null ) {
// 	    String formatName = files[0].getOriginalFilename().substring(files[0].getOriginalFilename().lastIndexOf(".")+1);
	    
// 	    if(formatName.toUpperCase()!="JPG" || formatName.toUpperCase() != "PNG" || formatName.toUpperCase() != "GIF"){
// 	        return;
// 	    }

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
	
// 	var str ="";
// 	$(".uploadedList .delbtn").each(function(index){
// 		 str += "<input type='hidden' name='files[0]' value='"+$(this).attr("href") +"'> ";
// 	});
	
// 	that.append(str);

});


// }
</script>

<!-- 








<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template"> 
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>     

<script>




var template = Handlebars.compile($("#template").html());


$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	//console.log(file);
	
	var formData = new FormData();
	
	formData.append("file", file);	
	
	$.ajax({
		  url: '/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});


$(".uploadedList").on("click", ".delbtn", function(event){
	
	event.preventDefault();
	
	var that = $(this);
	 
	$.ajax({
	   url:"/deleteFile",
	   type:"post",
	   data: {fileName:$(this).attr("href")},
	   dataType:"text",
	   success:function(result){
		   if(result == 'deleted'){
			   that.closest("li").remove();
		   }
	   }
   });
});


var bugger1No = ${bugger1VO.bugger1No};
var template = Handlebars.compile($("#template").html());

// $.getJSON("/sbugger1/getAttach/"+bugger1No,function(list){
// 	$(list).each(function(){
		
// 		var fileInfo = getFileInfo(this);
		
// 		var html = template(fileInfo);
		
// 		 $(".uploadedList").append(html);
		
// 	});
// });

// $(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
	
// 	var fileLink = $(this).attr("href");
	
// 	if(checkImageType(fileLink)){
		
// 		event.preventDefault();
				
// 		var imgTag = $("#popup_img");
// 		imgTag.attr("src", fileLink);
		
// 		console.log(imgTag.attr("src"));
				
// 		$(".popup").show('slow');
// 		imgTag.addClass("show");		
// 	}	
// });

// $("#popup_img").on("click", function(){
	
// 	$(".popup").hide('slow');
	
// });	


</script>





 -->
<!-- /.content-wrapper -->

<%-- <%@include file="../include/footer.jsp"%> --%>
