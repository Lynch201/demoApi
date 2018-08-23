<!DOCTYPE html>
<html>
<head>
</head>

<body style="text-align: center;" >

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
        var code="YGDPX1mLkiIeB12Qc6hmKnJI";
        var state="200";
        var infoId="203";
        if(code!=null&&state==200){
            //  alert("22");
            //   alert(code);
            document.getElementById("code").value=code;
            document.getElementById("infoId").value=infoId;
            window.onload= function(){
                document.getElementById('myForm').submit();
            }
        }else{
            //     alert("shouquan");
            window.onload= function(){
                document.getElementById('getcode').submit();
            }
        }

    });
</script>





</body>




</html>