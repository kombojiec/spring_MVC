<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <h1>Please, fill the form</h1>
    <br>
    <form:form action="/users/registration-completed" modelAttribute="user">
        <form:label path="name" cssStyle="color: green">
            Enter your name <br>
            <form:input path="name"/><br>
            <form:errors path="name" cssStyle="color: red"/><br><br>
        </form:label>

        <form:label path="surname" cssStyle="color: green">
            Enter your surname <br>
            <form:input path="surname"/><br>
            <form:errors path="surname" cssStyle="color: red"/><br><br>
        </form:label>

        <form:label path="birthYear" cssStyle="color: green">
            Enter your year of birth <br>
            <form:input path="birthYear"/><br><br>
        </form:label>

        <form:label path="family">
            Do you have family? <br>
            <form:radiobutton path="family" label="Yes" value="true"/>
            <form:radiobutton path="family" label="No" value="false"/>
        </form:label><br><br>

        <form:label path="country" cssStyle="color: green">
            Enter your country: <br>
            <form:select path="country">
                <form:option value="Russion Federation" label="Russia"/>
                <form:option value="United States" label="USA"/>
                <form:option value="European Unity" label="EU"/>
            </form:select><br><br>
        </form:label>

        <form:label path="programmingLanguages" cssStyle="color: green">
            Your programming languages: <br>
            <form:checkbox path="programmingLanguages" value="JavaScript" label="JS"/>
            <form:checkbox path="programmingLanguages" value="Java" label="Java"/>
            <form:checkbox path="programmingLanguages" value="C++" label="C++"/>
            <form:checkbox path="programmingLanguages" value="Python" label="Python"/>
        </form:label><br><br>

        <form:button>Submit</form:button>
    </form:form>
<%--    <form action="/users/registration-completed" method="get">--%>
<%--        <label>--%>
<%--            Inter your name--%>
<%--            <input style="display: block" type="text" name="name"/>--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label>--%>
<%--            Inter your surname--%>
<%--            <input style="display: block" type="text" name="surname"/>--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <button type="submit">Submit</button>--%>
<%--    </form>--%>
    <br>
    <a href="/">Main page</a>
</body>
</html>