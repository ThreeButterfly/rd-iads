<%@page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<%request.setAttribute("tenantPrefix", request.getContextPath());%>
<script>
   var  cxt='<%=request.getContextPath()%>';
</script>