<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    a {
        text-decoration: none;
        color: #000;
    }
    h2{
        margin-bottom: 0;
    }
</style>
<body>
<% int sunny = (int) session.getAttribute("sunny");
    int cloudy = (int) session.getAttribute("cloudy");
    int java = (int) session.getAttribute("java");
    int javascript = (int) session.getAttribute("javascript");%>
<h2>Погода:</h2>
<p>Сонячно: <%= sunny%></p>
<p>Хмарно: <%= cloudy%></p>
<h2>Мова:</h2>
<p>Java: <%= java%></p>
<p>JavaScript: <%= javascript%></p>

<button>
    <a href="/poll" >Назад до опитування</a>
</button>
</body>
</html>