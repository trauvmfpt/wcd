<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/10/2019
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Phone</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container" style="margin: 50px;">
        <div class="row">
            <div class="col">
                <form method="post" action="/phone/add" class="">
                    <div class="form-group">
                        <label>Id</label>
                        <input type="text" class="form-control" name="id" placeholder="E.g. APL01" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" placeholder="E.g. Apple No 1" required>
                    </div>
                    <div class="form-group">
                        <label>Brand</label>
                        <select class="form-control" name="brand" required>
                            <option value="Apple">Apple</option>
                            <option value="Samsung">Samsung</option>
                            <option value="Nokia">Nokia</option>
                            <option value="Others" selected>Others</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input type="number" max="9999" min="100" step="0.5" class="form-control" name="price" placeholder="10000000" required> <span>$</span>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="description" rows="3" required></textarea>
                    </div>
                    <div class="form-group" style="text-align: center;">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        <button type="reset" class="btn btn-primary btn-block reset">Reset</button>
                    </div>
                </form>
            </div>
            <div class="col">
                nandemonaiya
            </div>
        </div>
    </div>

<script>
</script>
</body>
</html>
