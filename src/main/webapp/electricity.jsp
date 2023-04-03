<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Electricity Bill</title>
</head>
<body>
    <h2>Appliance Usage</h2>
    <form action="electricity-bill" method="post">
        <table>
            <tr>
                <td>Lights:</td>
                <td><input type="number" name="lights" required></td>
            </tr>
            <tr>
                <td>Fans:</td>
                <td><input type="number" name="fans" required></td>
            </tr>
            <tr>
                <td>Fridge:</td>
                <td><input type="number" name="fridge" required></td>
            </tr>
            <tr>
                <td>Washing Machine:</td>
                <td><input type="number" name="washingMachine" required></td>
            </tr>
            <tr>
                <td>Iron Box:</td>
                <td><input type="number" name="ironBox" required></td>
            </tr>
            <tr>
                <td>Computers:</td>
                <td><input type="number" name="computers" required></td>
            </tr>
            <tr>
                <td>Mobile Phones:</td>
                <td><input type="number" name="mobilePhones" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <button type="submit">Calculate Bill</button>
                </td>
            </tr>
        </table>
    </form>
    <hr>
    <h3>
        <%
            if(request.getMethod().equals("POST")) {
                try {
                    double billAmount = (double) request.getAttribute("billAmount");
                    out.println("Total Electricity Bill: Rs. " + billAmount);
                } catch (Exception e) {
                    out.println("Error calculating bill amount. Please try again.");
                }
            }
        %>
    </h3>
</body>
</html>
