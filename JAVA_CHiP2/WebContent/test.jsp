<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        table td {
            font-size: 10pt;
            height: 30px;
        }
        .tableLayer {
            text-align: center;
            text: 2pd;
            table-layout: fixed;
            width: 70%;
            height: 400px;
            border: 3px solid black;
        }
        .use{
            border: 3px solid black;
            background-color: skyblue;
        }
        .notUse {
            border: 3px solid black;
            background-color: gray;
        }
    </style>
</head>
<body>
    <table class="tableLayer">
        <tr> <!--1-->
            <td class="use" colspan="2" rowspan="4">세미나실 A</td> <td></td>
            <td class="use">개인실 A</td> <td class="use">개인실 B</td> <td class="use">개인실 C</td>
            <td class="use">개인실 D</td> <td class="use">개인실 E</td> <td class="use">개인실 F</td>
            <td></td> <td></td> <td></td>
        </tr>
        <tr> <!--2-->
            <td></td> <td></td> <td></td> <td></td>
            <td></td> <td></td> <td></td> <td></td>
            <td class="use" colspan="2" rowspan="2">컨테이너실 A</td>
        </tr>
        <tr> <!--3-->
            <td></td>
            <td class = "notUse" colspan="6" rowspan="2">공용 테이블</td>
            <td></td>
        </tr>
        <tr> <!--4-->
            <td></td> <td></td>
            <td class="use" colspan="2" rowspan="2">컨테이너실 B</td>
        </tr>
        <tr> <!--5-->
            <td class="use" colspan="2" rowspan="4">세미나실 B</td>
            <td></td> <td></td> <td></td> <td></td>
            <td></td> <td></td> <td></td> <td></td>
        </tr>
        <tr> <!--6-->
            <td></td>
            <td class = "notUse" colspan="6" rowspan="2">공용 테이블</td>
            <td></td>
            <td class="use" colspan="2" rowspan="2">컨테이너실 C</td>
        </tr>
        <tr> <!--7-->
            <td></td> <td></td>
        </tr>
        <tr> <!--8-->
            <td></td> <td></td> <td></td> <td></td> <td></td>
            <td></td> <td></td> <td></td> <td class="use" colspan="2" rowspan="2">컨테이너실 D</td>
        </tr>
        <tr> <!--9-->
            <td></td> <td></td> <td></td> <td></td> <td></td>
            <td></td> <td></td> <td></td> <td></td> <td></td>
        </tr>
        <tr> <!--10-->
            <td class="notUse">화장실</td> <td class="notUse" colspan="2">카운터</td>
            <td></td> <td></td>
            <td class="notUse" colspan="3">입구</td>
            <td></td> <td></td> <td></td> <td></td>
        </tr>
    </table>
</body>
</html>