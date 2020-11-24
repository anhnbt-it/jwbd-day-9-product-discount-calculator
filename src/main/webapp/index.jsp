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
  </head>
  <body>
  <form action="/display-discount" method="post">
    <fieldset>
      <legend>Product Discount Calculator</legend>
      <div class="form-group">
        <label for="desc">Mô tả sản phẩm</label>
        <input type="text" name="desc" id="desc">
      </div>
      <div class="form-group">
        <label for="price">Giá niêm yết của sản phẩm</label>
        <input type="text" name="price" id="price">
      </div>
      <div class="form-group">
        <label for="percent">Tỷ lệ chiết khấu (phần trăm)</label>
        <input type="text" name="percent" id="percent">
      </div>
      <div class="form-group">
        <button type="submit">Calculate Discount</button>
      </div>
    </fieldset>
  </form>
  $END$
  </body>
</html>
