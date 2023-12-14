<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Currency"%>
<%@ page import="domain.Order"%>
<%
Currency c1 = new Currency(1l, "Рубль", "RUB");
Currency c2 = new Currency(2l, "Доллар", "USD");
Currency c3 = new Currency(3l, "Евро", "EUR");
Currency c4 = new Currency(4l, "Песо", "MXN");
Currency[] currencies = {c1, c2, c3, c4};
pageContext.setAttribute("currencies", currencies);

Order p1 = new Order(1l, "Брокерская", "Какая-то", c1, "SBER", 100l, 656465l, "11.08.2003", "11.08.2004");
Order p2 = new Order(2l, "Неброкерская", "Какая-то2", c2, "RSQA", 100l, 312322l, "11.08.2003", "11.08.2004");
Order p3= new Order(3l, "Брокерская", "Какая-то3", c3, "TRMO", 100l, 423424l, "11.08.2003", "11.08.2004");
Order p4 = new Order(4l, "Неброкерская", "Какая-то4", c4, "RJIV", 100l, 654645l, "11.08.2003", "11.08.2004");
Order[] orders = new Order[]{p1, p2, p3, p4};
pageContext.setAttribute("orders", orders);
%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Сотрудники</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Persons</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery -->
<script defer src="js/jquery.min.js"></script>
<!-- Bootstrap JS + Popper JS -->
<script defer src="js/bootstrap.min.js"></script>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<body>
<div class="container-fluid">
<jsp:include page="/views/header.jsp" />
<div class="container-fluid">
<div class="row justify-content-start ">
<div class="col-8 border bg-light px-4">
<h3>Список сотрудников</h3>
<table class="table">
<thead>
<th scope="col">Код</th>
<th scope="col">Фамилия</th>
<th scope="col">Имя</th>
<th scope="col">Должность</th>
<th scope="col">Телефон</th>
<th scope="col">Эл.почта</th>
<th scope="col">Редактировать</th>
<th scope="col">Удалить</th>
</thead>
<tbody>
<c:forEach var="person" items="${persons}">
<tr>
<td>${person.getId()}</td>
<td>${person.getLastName()}</td>
<td>${person.getFirstName()}</td>
<td>${person.getRole()}</td>
<td>${person.getPhone()}</td>
<td>${person.getEmail()}</td>
<td width="20"><a href="#" role="button"
class="btn btn-outline-primary">
<img alt="Редактировать"
src="images/icon-edit.png"></a>
</td>
<td width="20"><a href="#" role="button"
class="btn btn-outline-primary">
<img alt="Удалить"
src="images/icon-delete.png"></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<div class="col-4 border px-4">
<form method="POST" action="">
<h3>Новый сотрудник</h3>
<br>
<div class="mb-3 row">
<label for="lastname"
class="col-sm-3 col-form-label">Фамилия</label>
<div class="col-sm-7">
<input type="text" class="form-control"
id="staticLastname"name="lastname" />
</div>
</div>
<div class="mb-3 row">
<label for="firstname"
class="col-sm-3 col-form-label">Имя</label>
<div class="col-sm-7">
<input type="text"
class="form-control" id="staticFirstname"
name="firstname" />
</div>
</div>
<div class="mb-3 row">
<label for="rolename"
class="col-sm-3 col-form-label">Должность</label>
<div class="col-sm-7">
<select name="role" class="form-control">
<option>Выберите должность</option>
<c:forEach var="role" items="${roles}">
<option value="${role}">
<c:out value="${role.getNamerole()}"></c:out>
</option>
</c:forEach>
</select>
</div>
</div>
<div class="mb-3 row">
<label for="phone"
class="col-sm-3 col-form-label">Телефон</label>
<div class="col-sm-7">
<input type="text"
class="form-control" id="staticphone"
name="phone" />
</div>
</div>
<div class="mb-3 row">
<label for="email"
class="col-sm-3 col-form-label">Эл.почта</label>
<div class="col-sm-7">
<input type="text" class="form-control"
id="staticemail" name="email" />
</div>
</div>
<p> <br>
<button type="submit"
class="btn btn-primary">Добавить</button>
</p>
</form>
</div>
</div>
</div>
<jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>