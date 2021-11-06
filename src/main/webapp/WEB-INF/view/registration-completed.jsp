<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
  <h1>Congratulations dear user!!!</h1>
  <h2>You have been completed your registration with next data:</h2>
  <p>id: ${user.id}</p>
  <p>Name: ${user.name}</p>
  <p>Surname: ${user.surname}</p>
  <p>Year of birth: ${user.birthYear}</p>
  <p>Family: ${user.family? "Yes": "No"}</p>
  <p>Country: ${user.country}</p>
  <p>Programming languages: </p>
  <ol>
      <c:forEach var="item" items="${user.programmingLanguages}">
          <li>${item}</li>
      </c:forEach>
  </ol>
  <br>
  <a href="/">Main page</a>
</body>
</html>