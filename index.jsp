<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Map.Entry" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Example</title>
</head>
<body>
    <h1>Please enter your grade for our project (;</h1>

    <!-- Form for input -->
    <form method="post">
        <label for="inputText">Enter some text:</label>
        <input type="text" id="inputText" name="inputText" value="<%= request.getParameter("inputText") %>">
        
        <!-- Button -->
        <button type="submit">Submit</button>
    </form>

    <% 
        String inputText = request.getParameter("inputText");
        if (inputText != null) {
            if ("110".equals(inputText)) {
                out.println("<p>Great</p>");
            } else {
                out.println("<p>Incorrect</p>");
            }
        }
    %>

</body>
</html>
