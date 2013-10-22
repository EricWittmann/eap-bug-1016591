eap-bug-1016591
===============

Reproduces EAP bug 1016591.

How to Reproduce
================

Reproducing the problem requires two WAR deployments.  This project contains two projects:

* app-with-policy-context
* dumb-app

The *app-with-policy-context* is a simple web app with a single 'index.jsp' that looks up
the current HTTP Request from the JACC PolicyContext and then displays a message.

The *dumb-app* is a simple web app with a single 'index.jsp' that does nothing except 
display a message.

Steps
=====

0. Start EAP 6.1
1. Do a *mvn clean install* at the root of this project
2. cd app-with-policy-context
3. mvn jboss-as:deploy
4. Point your browser to:  http://localhost:8080/app-with-policy-context
  a. Observe an error-free web page
5. cd ../dumb-app
6. mvn jboss-as:deploy
7. Point your browser to:  http://localhost:8080/dumb-app
  a. Observe an error-free web page
8. Point your browser to:  http://localhost:8080/app-with-policy-context
  a. Observe an error-free web page (still)
9. mvn jboss-as:undeploy
10. Point your browser to:  http://localhost:8080/app-with-policy-context
  a. *Observe the server error here*

