

function dibujaGrid(idTabla, myControls, colNamesParam, colModelParam,
		captionTitle, Width, Height, datos) {

	jQuery("#" + idTabla).jqGrid({
		datatype : "local",
		data : datos,
		scroll : true,
		loadtext : 'Cargando...',
		gridview:true,
		colNames : colNamesParam,
		colModel : colModelParam,
		width : Width,
		height : Height,
		viewrecords : true,
		rowNum : 1000,
		caption : captionTitle
	});

}

function evento(object) {
	//console.log(object);
	obj = jQuery.parseJSON(object);
	//console.log(obj);
	
	$("#gridUsuarios").jqGrid('addRowData', obj.id, obj, "first");
	
}
