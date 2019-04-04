<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<s:setDataSource
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/stp7"
    user="root" password="qwerty"/>

<c:forEach var="id" items="${paramValues.ids}">
    <s:update var="ur">delete from notice where srno=${id}</s:update>
    <c:set var="msg" value="Data deleted successfully" scope="request"/>
</c:forEach>
    
    
    <jsp:forward page="managenoticeADM.jsp"/>