<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Tests</title>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="index.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <cfobject component="Tests" name="tests">
    <div class="container" style="margin-top: 50px;">
      <div class="panel panel-primary">
        <div class="panel-heading">
          Test results
        </div>
        <div class="panel-body">
          <cfinvoke component="tests" method="test1"></cfinvoke>
          <cfinvoke component="tests" method="test2"></cfinvoke>
          <cfinvoke component="tests" method="test3"></cfinvoke>
          <cfinvoke component="tests" method="test4"></cfinvoke>
          <cfinvoke component="tests" method="test5"></cfinvoke>
          <cfinvoke component="tests" method="test6"></cfinvoke>
          <cfinvoke component="tests" method="test7"></cfinvoke>
          <cfinvoke component="tests" method="test8"></cfinvoke>
          <cfinvoke component="tests" method="test9"></cfinvoke>
          <cfinvoke component="tests" method="test10"></cfinvoke>
          <cfinvoke component="tests" method="test11"></cfinvoke>
          <cfinvoke component="tests" method="test12"></cfinvoke>
          <cfinvoke component="tests" method="test13"></cfinvoke>
          <cfinvoke component="tests" method="test14"></cfinvoke>
          <cfinvoke component="tests" method="test15"></cfinvoke>
        </div>
      </div>
    </div>
  </body>
</html>
