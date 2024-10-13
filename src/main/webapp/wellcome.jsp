<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

    <h1>Resumen de factura: </h1>

    <p><strong>Concepto:</strong> <s:property value="invoiceBean.subject"/></p>
    <p><strong>Fecha Desde:</strong> <s:property value="invoiceBean.dateFrom" format="yyyy-MM-dd HH:mm:ss"/></p>
    <p><strong>Fecha Hasta:</strong> <s:property value="invoiceBean.dateTo" format="yyyy-MM-dd HH:mm:ss"/></p>
    <p><strong>Importe Bruto:</strong> <s:property value="invoiceBean.grossAmount" /> €</p>
    <p><strong>Importe Total con IVA (21%):</strong> <s:property value="#invoiceAction.totalWithIVA()" /> €</p>


</body>
</html>