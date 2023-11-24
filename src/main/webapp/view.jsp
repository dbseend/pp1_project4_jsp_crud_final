<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.pp1_22200488_project4_final.BoardDAO, com.example.pp1_22200488_project4_final.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>상세페이지</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
    </tr>
    <tr>
        <td>${u.getSeq()}</td>
        <td>${u.getTitle()}</td>
        <td>${u.getWriter()}</td>
        <td>${u.getContent()}</td>
        <td>${u.getRegdate()}</td>
    </tr>
</table>
</body>
</html>
