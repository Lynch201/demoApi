<%@ page language="java" pageEncoding="UTF-8" %>
<%
	String infoId=request.getParameter("infoId");


%>
<!DOCTYPE html>
<html>
<head>
</head>

<body style="text-align: center;" >

<%--<div class="test" style="width: 30rem;height: 30rem;position: absolute;margin: 0 auto;left: 0;right: 0;top:30%">
	<a href="https://180.168.146.69/authorization/bocAuthorization/authorization.html?source=SHIMINYUN&demo=t" style="font-size: 5rem">请点击</a>
</div>--%>


<form action="http://testmy.eshimin.com/sanjin/boc/gateway" id="myForm" style="display: none">
	<input name="code" id="code">
	<input name="infoId" id="infoId">
</form>

<form action="https://180.168.146.69/authorization/bocAuthorization/authorization.html" id="getcode" style="display: none">
	<input name="source" id="source" value="SHIMINYUN">
	<input name="showTitle" id="showTitle" value="0">
</form>
<script src="../static/jquery/jquery-1.9.1.min.js"></script>
<script src="../static/x-editable/js/bootstrap-editable.js"></script>
<script>
    $(function() {
        // alert("111");
        var code="${param.code}";
        var state="${param.state}";
        var infoId="${param.infoId}";
        if(infoId==null||infoId==undefined){
            alert("返回");
			window.location.href="https://cloud.bankofchina.com/sh/html/h5/sanjin/index.html";
        }else{

            if(code!=null&&state==200){
                //  alert("22");
                //   alert(code);
                document.getElementById("code").value=code;
                document.getElementById("infoId").value=infoId;
                <%
                request.removeAttribute("infoId");
                %>
                window.onload= function(){
                    document.getElementById('myForm').submit();
                }
            }else{
                //     alert("shouquan");
                window.onload= function(){
                    document.getElementById('getcode').submit();
                }


            };

        }

    });
</script>





</body>




</html>