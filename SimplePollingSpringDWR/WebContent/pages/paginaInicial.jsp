<!DOCTYPE html>
<html>
<head>
  <title>SimplePollingSpringDWR</title>
  <meta http-equiv="Content-Type" content="text/html; charset=us-ascii" />
	<link rel="stylesheet" type="text/css" media="screen" href="/SimplePollingSpringDWR/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="/SimplePollingSpringDWR/css/dark-hive/jquery-ui-1.9.2.custom.css"/>
	<link rel="stylesheet" type="text/css" media="screen" href="/SimplePollingSpringDWR/css/ui.jqgrid.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="/SimplePollingSpringDWR/css/styleCustom.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="/SimplePollingSpringDWR/css/jqx.base.css" type="text/css" />
	
	<script src="/SimplePollingSpringDWR/js/jquery.js" type="text/javascript"></script>
	<script src="/SimplePollingSpringDWR/js/bootstrap.js" type="text/javascript"></script>
	<script src="/SimplePollingSpringDWR/js/jquery-ui-custom.min.js" type="text/javascript"></script>
	<script src="/SimplePollingSpringDWR/js/jquery.jqGrid.js" type="text/javascript"></script>
	<script src="/SimplePollingSpringDWR/js/jquery-ui.js"></script>
	
  	
	<!--Estos son los  js DWR -->
  	<script type='text/javascript' src='/SimplePollingSpringDWR/dwr/util.js'></script>
  	<script type='text/javascript' src='/SimplePollingSpringDWR/dwr/engine.js'> </script>
	<script type="text/javascript" src="/SimplePollingSpringDWR/dwr/interface/hiloLog.js"></script>

	<!--Estos son mis scritps -->
	<script src="/SimplePollingSpringDWR/js/dibujaGrid.js"></script>
	<script src="/SimplePollingSpringDWR/js/conexion-functions.js"></script>
	
	
	
	
</head>

<body onload="dwr.engine.setActiveReverseAjax(true);hiloLog.arranca();">

	<ul class="nav nav-tabs" role="tablist" id="myTab">
		<li class="active"><a href="#lapestana" role="tab"
			data-toggle="tab">Usuarios</a></li>


	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="lapestana">
			<table id="gridUsuarios" class="tablaAlertas"></table>
		</div>


	</div>


</body>
</html>