<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SilverlightJSTest.Web._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Silverlight.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="movieContainer"></div>
    <script type="text/javascript">
        Silverlight.createObject(
            "ClientBin/SilverlightJSTest.xap",  // source
            document.getElementById("movieContainer"),  // parent element
            "jsTest",  // id for generated object element
            {
                width: "100%", height: "300", background: "white", enableHtmlAccess: "true", isWindowless: "True",
            }
        );

        function setSomeText() {
            var sObj = document.getElementById("jsTest");
            sObj.content.Page.setText("Hi");
            return false;
        }
        
        function getText(callerName) {
            return "Hello from " + callerName + "!";
        }
    </script>
    <button onclick="return setSomeText()">Set Some Text</button>
    </form>
</body>
</html>
