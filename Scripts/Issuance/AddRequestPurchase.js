$("#btnAdd").on("click", function(evt){
	$("#FormRequest").validate({
		submitHandler: function(form, e) {
			e.preventDefault();
			var table = $("#ListRequest").DataTable();
			var rows = table.rows().data();
			var arrTemp = [];
			for (var i = 0; i < rows.length; i++) {
				arrTemp.push({
					EquipmentID: rows[i].EquipmentID,
					Equipment: rows[i].Equipment,
					Description: rows[i].Description,
					Purpose: rows[i].Purpose,
					Unit: rows[i].Unit,
					New: rows[i].New,
					NewID: rows[i].NewID,
					Serial: rows[i].Serial,
					Budget: rows[i].Budget,
					Total: rows[i].Total,
					Quantity: rows[i].Quantity
				});
			};

			arrTemp.push({
				EquipmentID: $("#Equipment").val(),
				Equipment: $("#Equipment option:selected").text(),
				Description: $("#Description").val(),
				Purpose: $("#Purpose").val(),
				Unit: $("#Unit").val(),
				NewID: $("#New").val(),
				New: $("#New option:selected").text(),
				SerialID: $("#Serial").val(),
				Serial: $("#Serial option:selected").text(),
				Budget: $("#Budget").val(),
				Total: $("#Total").val(),
				Quantity: $("#Quantity").val()
			});

			$("#Equipment").empty();
			$("#Description").val("");
			$("#Purpose").val("");
			$("#Unit").val("");
			$("#New").val("");
			$("#Serial").empty();
			$("#Budget").val("");
			$("#Total").val("");
			$("#Quantity").val("");

			JSTable(arrTemp, "#ListRequest", ["Equipment", "Description", "New", "Serial", "Quantity", "Budget"], "", [], [20,20,22,20,20,20]);
		}
	});
	ajaxRules("Equipment Description Purpose Unit New Serial Budget Total", "required InputTextBox", [true, true], evt);
	ajaxRules("Quantity", "required number", [true, true], evt);
});