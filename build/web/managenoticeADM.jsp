<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<s:setDataSource
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/stp7"
    user="root" password="qwerty"/>
<link rel="stylesheet" href="res/Site.css"/>

<s:query var="rs">
    select * from notice
</s:query>
    
    
        <body background="img/notice.jpg" alt=""/>
        <style>
 td:hover{
    background:orange;
    }

</style>
<link rel="stylesheet" href="res/Site.css"/>
<center>
    <br>
    <h2 class="blue"> <font face='algerian' size=7><u>NOTICE BOARD</u> </font></h2>
    <br>
    <hr>
    <br>
    <table border="1" class="table">
        <tr class="gridheader">
         <th> SRNO</th>
         <th>NOTICE</th>
         <th>DATE</th>
         <th>TYPE</th>
         <th>OPERATION</th>
        </tr>
        <form action="delnotice.jsp" onsubmit="return confirm('Are you sure to delete?')">
        <c:forEach var="data" items="${rs.rows}">  
            <tr class="gridrow">
            <td>
                <a href="editnoticeform.jsp?i=${data.srno}&n=${data.notice}&t=${data.date}&r=${data.type}" 
                   title="click to edit details">${data.srno}</a>
            </td>
            
            <td>${data.notice}</td>
            <td>${data.date}</td>
            <td>${data.type}</td>
            <td>
                <input type="checkbox" name="ids" value="${data.srno}"/>
            </td>
        </tr>
        </c:forEach>
        <tr>
            <th colspan="4">
                <a href="ADMcreatenotice.jsp">ADD NEW NOTICE</a>
            </th>
            <th>
                <a href="deletenotice.jsp"> <button>DELETE</button></a>
            </th>
        </tr>
        </form>
    </table>
</center>
                ${requestScope.msg}
</body>
