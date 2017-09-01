<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%            
  response.setHeader("pragma", "no-cache");            
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");           
  response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> 
            <tiles:getAsString name="Title"/>    
        </title>
    </head>
   <body>
    <table width="100%">
        <thead>
            <tr>
                <td colspan="2">
                    <tiles:insertAttribute name="Header"/>
                </td>
            </tr>
        </thead>

        <tbody>
            <tr height="300px">
                <td width="20%">
                    <tiles:insertAttribute name="Sidebar"/>
                </td>
                <td width="80%">      
                        <tiles:insertAttribute name="Content"/>
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="2">
                    <tiles:insertAttribute name="Footer"/>
                </td>
            </tr>
        </tfoot>
    </table>
</body>    
</html>