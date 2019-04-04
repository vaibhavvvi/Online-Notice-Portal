
    <body background="img/notice.jpg" alt=""/>
    <center><br>
        <br>
   <h1> TO CREATE NOTICE </h1>
    <HR>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<s:setDataSource
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/stp7"
    user="root" password="qwerty"/>
<s:query var="rs" sql="select type from notice group by type"/>
    <pre>

<form action="editnotice.jsp" method="post">
  <TABLE border="2" width="20%"  height="5%">
            <th> SRNO </TH>
            <TH>  TYPE </th>
            <TH> <FONT SIZE=2>NOTICE</FONT></TH>
            <tH> <FONT SIZE=2>DATE</FONT></tH></TR>
        <TR> 
            <TD><input type="TEXT"  name="srno" readonly="true" value="${param.i}"> </TD>
              <tH> <FONT SIZE=3></FONT>
                  <select name="type"> 
            <c:forEach var="s" items="${rs.rows}">
                <c:if test="${param.r==s.type}">
                    <option selected>${s.type}</option>
             </c:if>
                      <c:if test="${param.r!=s.type}">
                    <option>${s.type}</option>
             </c:if>
            </c:forEach>
          
        </select>
            <TD>  <textarea rows="20%" cols="50%" name="textarea">${param.n}</textarea></TD>
            <TD>  <input type="date" name="date" value="${param.t}"> </TD>
           
</td>

        </tr>
          
    </TABLE>
    
    
             <input type="submit" value="UPDATE" class="button GREEN"/> 
</form>
    </pre>
    
    
</center>
    </body>