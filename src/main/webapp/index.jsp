<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="POST" action="/poll">
    <p>Яка сьогодні погода:</p>
    <label><input type="radio" name="weather" id="sunny" value="sunny" required>Сонячно</label>
    <br>
    <label for="cloudy"><input type="radio" name="weather" id="cloudy" value="cloudy" required>Хмарно</label>
    <br>
    <p>Яку мови ви використовуєте:</p>
    <label for="java"><input type="radio" name="language" id="java" value="java" required>Java</label>
    <br>
    <label for="javascript"><input type="radio" name="language" id="javascript" value="javascript"
                                   required>JavaScript</label>
    <br>
    <button type="submit">Відправити відповідь</button>
</form>
</body>
</html>