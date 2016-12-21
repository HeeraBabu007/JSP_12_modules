
<!THIS IS TO PROCEED WITHOUT CLICKING SUBMIT>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>
            $(document).ready(function(){
                 $("#users").change(function(){
                     var value = $(this).val();
                     $.get("selectData.jsp",{q:value},function(data){
                      $("#javaquery").html(data);
                     });
                 });
             });
        </script>
    </head>
    <body>
     <%@include file="header.jsp"%>
    <h1>This example of select statement using Ajax and javaquery</h1>
        <select id = "users">
           <option value="">Select Option: status</option>
           <option value="enable">enable</option>
           <option value="disable">disable</option>
        </select>
        <br />
        <div id="javaquery"><b>Name will be displayed here</b></div>
    </body>
</html>