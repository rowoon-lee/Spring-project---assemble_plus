<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <%@include file="include/header.jsp" %>  --%>
<c:import url="/assemble.io/${mi_assembleName}/header"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
//bookmark click 시 변경
function imgchange(){
	 var img = document.getElementByClassName("bk");
	 if(img.src.match("before")){
		 img.src = "/resources/assets/img/bookmark_after.png";
	 }
	 
}
	//댓글달기
    $(function(){
	    $(".submit").click(function(){
	        
	    console.log(this.parentNode.childNodes);
	        
	    var bno = this.parentNode.childNodes[1].value;
	    var groupno = this.parentNode.childNodes[3].value;
	    var categoryno = this.parentNode.childNodes[5].value;
	    var recontents = this.parentNode.childNodes[7].value;

	    document.location.href = "insertCommentatHome?bno="+bno+"&groupno="+groupno+"&categoryno="+categoryno+"&contents="+recontents;
	  });
          
	});
</script>

<style type="text/css">
#main{
	width: 50%;
    height: 100%;
    position: absolute;
/*     background: white; */
    margin-top: 5%;
    margin-bottom: 5%;
    margin-left: 25%;
	}
	
#board{
	padding: 20px;
	border: 2px solid #F2F2F2; 
	background-color: white;
	margin-bottom : 30px;
	border: 1px solid #CCCCCC;
/* #F2F2F2; */
}

#a, #b{
border-bottom : 1px solid #CCCCCC;
}

#e{
margin-top : 10px;
}

#retext{
	width: 91%;
	border : 1px solid #CCCCCC;
}
#re{
	background-color: white;
	border: none;
	border: 1px solid #CCCCCC;
	margin-right: 1%;
}
.like{
	width: 22px;
}

.hate{
	margin-left: 1.5%;
	width: 22px;
}
.bk{
	margin-left: 77%;
	width: 22px;	
}

#more{
	margin-left: 1.5%;
	width: 22px;
}

#boarddate{
	margin-left: 80%;
}

.submit{
	margin-left: 2%;
}


</style>

</head>
<body>
 	<div id="main">
 	<br />
      	<h3>나의 소식 피드</h3>
		
		<c:forEach var="tl" items="${mainlist }">
		 <div id="board">
			<div id="a"><a href="/assemble.io/${mi_assemblename }/g/${tl.groupno }/wall"><h4>${tl.groupname }</h4></a></div>
						 	
		 	<div id="b">
		 	<%-- <h3>${tl.mi_assemblename }</h3> --%>
		 		<h4>${tl.mi_memname }( ${tl.mi_memid } )</h4>
		 		<h5 id="boarddate">${tl.boarddate }</h5>
		 	</div>
		 	<div id="c">
		 		<h4>${tl.boardcontents } </h4>

				<h5>좋아요 : ${tl.boardlike }</h5>
				<h5>싫어요 : ${tl.boardhate }</h5>
				<h5>요청인지 : ${tl.requestboolean }</h5>
				 <h6>파일여부 : ${tl.filename }</h6> 
			</div>
				
			<div id="d">
				<input type="button" value="댓글" id="re" />
				
				<img src="/resources/assets/img/like.png" class="like">
							<!-- <h5 id="count"></h5> -->							
				<img src="/resources/assets/img/hate.png" class="hate">
				
				<img src="/resources/assets/img/bookmark_before.png" class="bk" onclick="imgchange()"/>

				<img src="/resources/assets/img/more.png" id="more" class="lh" />
			</div>
				
			<div id="e">
				<input type="hidden" name="bno" value="${tl.bno }"/>
				<input type="hidden" name="groupno" value="${tl.groupno }"/>
				<input type="hidden" name="categoryno" value="${tl.categoryno }"/>
				<input type="text" name="" id="retext" placeholder=" 댓글을 입력하세요" />
				<input type="button" value="등록" class="submit"/>
			</div>
		</div>
		</c:forEach>
	</div>
<script src="/resources/assets/js/jquery.js"></script>
<script src="/resources/assets/js/jquery-1.8.3.min.js"></script>
<script src="/resources/assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript"
	src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/resources/assets/js/jquery.scrollTo.min.js"></script>

<!--     common script for all pages -->
<script src="/resources/assets/js/common-scripts.js"></script>	
	 	
</body>
</html>