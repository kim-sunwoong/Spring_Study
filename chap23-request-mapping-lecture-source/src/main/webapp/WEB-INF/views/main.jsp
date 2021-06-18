<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1 align="center">Spring MVC Mapping 테스트</h1>
	
	<h2>1. 메소드에 요청 매핑하기</h2>
	<!-- 요청 방식을 지정하지 않은 핸들러 메소드에 get방식과 post방식의 요청을 둘 다 보냄 -->

	<h3>GET : /menu/regist</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/menu/regist'">
		GET 메뉴 등록 요청
	</button>
	
	<h3>POST : /menu/regist</h3>
	<form action="${pageContext.servletContext.contextPath}/menu/regist" method="post">
		<button type="submit">POST 메뉴 등록 요청 </button>
	</form>
	
	<!-- 이번에는 get 방식과 post방식의 요청처리를 구분해서 확인하자 -->
	<h3>GET : /menu/modify</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/menu/modify'">
		GET 메뉴 수정 요청
	</button>
	
	<h3>POST : /menu/modify</h3>
	<form action="${pageContext.servletContext.contextPath}/menu/modify" method="post">
		<button type="submit">POST 메뉴 등록 요청 </button>
	</form>
	
	<!-- @GetMapping or @PostMapping 을 이용해서 매핑하기 -->
	<h3>GET : /menu/delete</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/menu/delete'">
		GET 메뉴 삭제 요청
	</button>
	
	<h3>POST : /menu/delete</h3>
	<form action="${pageContext.servletContext.contextPath}/menu/delete" method="post">
		<button type="submit">POST 메뉴 삭제 요청 </button>
	</form>
	
	<h2>2. 클래스에 요청 매핑하기</h2>
	<!-- 
		@RequestMapping은 컨트롤러 클래스 레벨에서도 사용이 가능하다.
	 -->
	 <h3>GET : /order/regist</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/order/regist'">
		GET 주문 등록 요청
	</button>
	
	<h3>POST : /order/modify</h3>
	<form action="${pageContext.servletContext.contextPath}/order/modify" method="post">
		<button type="submit">POST 주문 수정 요청 </button>
	</form>
	
	<h3>POST : /order/delete</h3>
	<form action="${pageContext.servletContext.contextPath}/order/delete" method="post">
		<button type="submit">POST 주문 삭제 요청 </button>
	</form>
	
	<!-- PathVariable 테스트 -->
	 <h3>GET : /order/detail/orderNo</h3>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/order/detail/123'">
		orderNo 파라미터 조회 GET 등록 요청
	</button>
</body>
</html>