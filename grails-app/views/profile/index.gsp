<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 23/6/16
  Time: 2:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbarExpense">
</head>

<body>
    <content tag="heading">
        <h2>Profile</h2>
    </content>

    <content tag="mainContent">
        <g:if test="${flash.message}">
            <div class="alert alert-info">
                <p>
                    ${flash.message}
                </p>
            </div>
        </g:if>
        <g:each in="${loggedUser}" var="user" id="${user.id}">
            <dl class="list-group-item dl-horizontal">
                <dt class="">First Name:</dt>
                <dd>${user.firstName}</dd>
                <dt>Last Name:</dt>
                <dd>${user.lastName}</dd>
                <dt>Email:</dt>
                <dd>${user.email}</dd>
            </dl>
        </g:each>
    </content>
</body>
</html>