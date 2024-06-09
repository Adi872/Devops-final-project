<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Map.Entry" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Example</title>
</head>
<body>
    <h1>Hello and Welcome to our site!</h1>

    <!-- Form for input -->
    <form method="post">
        <label for="inputText">Please enter your grade for our project (; </label>
        <input type="text" id="inputText" name="inputText" value="<%= request.getParameter("inputText") %>">
        
        <!-- Button -->
        <button type="submit">Submit</button>
    </form>

    <% 
        String inputText = request.getParameter("inputText");
        if (inputText != null) {
            if (inputText.equals("110")) {
                out.println("<p style='color:green;'>Great</p>");
            } else if (inputText.equals("100")) {
                out.println("<p style='color:orange;'>Not enough</p>");
            } else {
                out.println("<p style='color:red;'>Incorrect</p>");
            }
        }
    %>

    <a id="youtubeLink" href="https://www.youtube.com/" target="_blank">Youtube</a>
	<br/>
	<a id="facebookLink" href="https://www.facebook.com/" target="_blank">Facebook</a>
    <br/>
    <a id="facebookLink" href="http://localhost:8080/Devops-Final-Project-Hen-Inbar-Maayan-Adi/" target="_blank">Home</a>

</body>
</html>
