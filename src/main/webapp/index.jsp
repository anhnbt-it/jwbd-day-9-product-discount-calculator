<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 23/11/2020
  Time: 3:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>

    <link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%
        StringBuilder error = new StringBuilder();
        if (request.getParameter("desc") == null) {
            error.append("<p class=\"error\">Vui lòng nhập mô tả sản phẩm</p>\n");
        }
        if (request.getParameter("price") == null) {
            error.append("<p class=\"error\">Vui lòng nhập giá sản phẩm</p>\n");
        }
        if (request.getParameter("percent") == null) {
            error.append("<p class=\"error\">Vui lòng nhập tỷ lệ chiết khấu phẩm</p>\n");
        }
        if (request.getParameter("desc") != null && request.getParameter("price") != null
                && request.getParameter("percent") != null) {
            String desc = request.getParameter("desc");
            double price = Double.parseDouble(request.getParameter("price"));
            double percent = Double.parseDouble(request.getParameter("percent"));
            double discountAmount = price * percent * 0.01;
    %>
    <p>Lương chiết khấu: <%=discountAmount%>
    </p>
    <p>Giá sau khi chiết khấu: <%=(price - discountAmount)%>
    </p>
    <p>Mô tả: <%=desc%>
    </p>
    <% } %>
    <%=error.toString()%>
    <form action="index.jsp" method="post">
        <fieldset>
            <legend>Product Discount Calculator</legend>
            <div class="form-group">
                <label for="desc">Mô tả sản phẩm</label>
                <input type="text" name="desc" id="desc" required>
            </div>
            <div class="form-group">
                <label for="price">Giá niêm yết của sản phẩm</label>
                <input type="text" name="price" id="price" required>
            </div>
            <div class="form-group">
                <label for="percent">Tỷ lệ chiết khấu (phần trăm)</label>
                <input type="text" name="percent" id="percent" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Calculate Discount</button>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
