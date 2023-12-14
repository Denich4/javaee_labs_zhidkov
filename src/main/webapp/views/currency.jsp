<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Currency"%>

<%
Currency c1 = new Currency(1l, "Рубль", "RUB");
Currency c2 = new Currency(2l, "Доллар", "USD");
Currency c3 = new Currency(3l, "Евро", "EUR");
Currency c4 = new Currency(4l, "Песо", "MXN");
Currency[] currencies = {c1, c2, c3, c4};
int length = currencies.length;
pageContext.setAttribute("currencies", currencies);
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Валюты</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Currencies</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery -->
<script defer src="js/jquery-3.6.4.js"></script>
<!-- Bootstrap JS + Popper JS -->
<script defer src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <jsp:include page="/views/header.jsp" />
        <div class="container-fluid">
        <div class="row justify-content-start ">
        <div class="col-8 border bg-light px-4">
        <h3>Список валют</h3>
        <table class="table">
        <thead>
        <th scope="col">Код</th>
        <th scope="col">Название</th>
        <th scope="col">Сокращение</th>
        <th scope="col"> Редактировать</th>
        <th scope="col">Удалить</th>
        </thead>
        <tbody>
        <c:forEach var="currency" items="${currencies}">
        <tr>
			<td>${currency.getId()}</td>
			<td>${currency.getCurrencyFull()}</td>
			<td>${currency.getCurrencyShort()}</td>
			
			<td width="20"><a href="#" role="button"
			class="btn btn-outline-primary">
			<img alt="Редактировать"
			src="images/icon-edit.png"></a></td>
			<td width="20"><a href="#" role="button"
			class="btn btn-outline-primary">
			<img alt="Удалить"
			src="images/icon-delete.png"></a></td>
        </tr>
        </c:forEach>
        </tbody>
        </table>
        </div>
        <div class="col-4 border px-4">
        <form method="POST" action="">
        <h3>Новая валюта</h3>
        <div class="mb-3">
        <br> <label for="inputRole"
        class="col-sm-3 col-form-label">Валюта</label>
        <div class="col-sm-6">
        <input type="text" name="inputCurrency"
        class="form-control" id="orderCurrency" />
        </div>
        </div>
        <p>
        <br> <br> <br>
        <button type="submit"
        class="btn btn-primary">Добавить</button>
        <br>
        </p>
        </form>
        </div>
        </div>
        </div>
        <jsp:include page="/views/footer.jsp" />
    </div>
</body>
</html>