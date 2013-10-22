<%
  Object r = org.overlord.bugs.bugzilla1016591.Bugzilla1016591Reproducer.reproduce();
%>
<html>
<body>
If you're seeing this, then the lookup of <%= String.valueOf(r.getClass()) %> worked!.
</body>
</html>