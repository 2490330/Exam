<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/common/base.jsp">
   	<c:param name = "title">
   		得点管理システム
   	</c:param>
   	<c:param name="scripts"></c:param>
   	 <c:param name="content">
   		<section class = "me-4">
   			<h2 class = "h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">成績参照</h2>
   			<form method="get">
   				<div class="row border mx-3 py-2 align-items-center rounded" id="filter">
   					<%--入学年度の選択--%>
   					<div class = "col-4">
   						<label class="form-label" for="student-f1-select">入学年度</label>
   						<select class = "form-select" id = "student-f1-select" name="f1">
   							<option value="">-------</option>
   							<c:forEach var="year" items="${ent_year_set}" >
   								<option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
   							</c:forEach>
   						</select>
   					</div>
   					<%--クラス選択--%>
   					<div class="col-4">
   						<label class = "form-label" for="student-f2-select">クラス</label>
   						<select class="form-select" id="student-f2-select" name="f2">
   							<option value="">-------</option>

   							<c:forEach var="num" items="${class_num_set}">
   								<option value="${num}"<c:if test="${num==f2}">selected</c:if>>${num}</option>
   							</c:forEach>
   						</select>
   					</div>
   					<%--科目選択--%>
   					<div class="col-4">
   						<label class="form-label" for="student-f1-select">科目</label>
   						<select class = "form-select" id = "student-f1-select" name="f1">
   							<option value="">-------</option>
   							<c:forEach var="year" items="${ent_year_set}" >
   								<option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
   							</c:forEach>
   						</select>
   					</div>
   					<%--学生情報の表示--%>

					<label class="form-label" for="student-f1-select">学生情報</label>
					<input type = "text" id = "student-f1-select" name="f1">
						<option value="0">学生番号を入力してください</option>
						<c:forEach var="year" items="${ent_year_set}" >
   								<option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
   							</c:forEach>
   					<%--検索のボタン--%>
   					<div class="col-2 text-center">
 						<button class="btn btn-secondary" id="filter-button">検索</button>
 					</div>
 					<div class="mt-2 text-warning">${errors.get("f1")}</div>
 				</div>
 			</form>
 			<%--検索結果--%>
   			<c:choose>
   				<c:when test="${students.size()}">
   					<div>検索結果:${students.size()}件</div>
   					<table class="table table-hover">
   						<tr>
   							<th>入学年度</th>
   							<th>クラス</th>
   							<th>科目</th>
   							<th></th>
   							<th></th>
   						</tr>
   						<c:forEach var="subject" items="${subjects}">
   							<tr>
   								<td>${student.entYear}</td>
   								<td>${student.no}</td>
   								<td>${student.name}</td>
   								<td>${student.classNum}</td>
   							</tr>
   						</c:forEach>
   					</table>
   				</c:when>
   				<c:otherwise>
   					<div>科目情報を選択または学生情報を入力して検索ボタンをクリックしてください</div>
   				</c:otherwise>
   			</c:choose>
		</section>
	</c:param>
</c:import>