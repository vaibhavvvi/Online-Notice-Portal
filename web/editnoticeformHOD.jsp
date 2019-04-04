
<body background="img/notice.jpg">
      
<center><br><br>
    <h1> <b><font face="algerian" size=7>CREATE NOTICE</font> </b></h1>
   
    <pre>
<form action="editnoticeHOD.jsp" method="post">
    <TABLE border="2" width="10%"  height="10%">
            <th> SRNO </TH>
           
            <TH> <FONT SIZE=3>NOTICE</FONT></TH>
            <tH> <FONT SIZE=3>DATE</FONT></tH>
            
            
        </TR>
        <TR> 
            <TD><input type="TEXT"  readonly="true" name="srno" value="${param.i}"> </TD>
             
                  
       
            <TD>  <textarea rows="15%" cols="50%" name="textarea">${param.n}</textarea></TD>
            <TD>  <input type="date" name="date" value="${param.t}"> </TD>
           
</td>

        </tr>
          
    </TABLE>
    
    
             <input type="submit" value="UPDATE" class="button GREEN"/> 
</form>
    </pre>
    
    
</center>
</body>