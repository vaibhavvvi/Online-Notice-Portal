<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<s:setDataSource
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/stp7"
    user="root" password="qwerty"/>
<s:update>
update notice set notice='${param.textarea}',date='${param.date}',type='${param.type}' where srno =${param.srno}
</s:update>
<c:set var="msg" value="Data updated successfully" scope="request"/>
 <jsp:forward page="delnotice.jsp"/>