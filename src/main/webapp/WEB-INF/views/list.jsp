<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <td>id</td>
            <td>email</td>
            <td>password</td>
            <td>name</td>
            <td>age</td>
            <td>mobile</td>
            <td>조회</td>
            <td>삭제</td>
        </tr>
    </table>

    <c:forEach items="${memberList}" var="member">
        <tr>
            <td>${member.id}</td>
            <td>
                <a href="/member?id=${member.id}">${member.memberName}</a>
            </td>
            <td>${member.memberAge}</td>
            <td>${member.memberMobile}</td>
            <td>
                <a href="/member?id=${member.id}">조회</a>
            </td>
            <td>
                <button onclick="deleteMember('${member.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</body>
<script>
    const deleteMember = (id) => {
        console.log(id);
        location.href = "/member/delete?id="+id;
    }
</script>
</html>
