$(document).ready(function(){
	if ($("#alterSuccess").text().trim() == "")
	{
		$("#alertSuccess").hide();
	}	
	$("#alertError").hide();
});

// SAVE - Click Event Handler
$(document).on("click", "#btnSave", function(event){
	// Clear status messages---------------------
	$("#alertSuccess").text(""); 
	$("#alertSuccess").hide(); 
	$("#alertError").text(""); 
	$("#alertError").hide();
	
	// Form validation-------------------
	var status = validateEmployeeForm(); 
	
	// If not valid
	if (status != true) 
	{ 
		 $("#alertError").text(status); 
		 $("#alertError").show(); 
		 return; 
	}
	
	// If valid
	$("#formEmployee").submit();
});	

//UPDATE
$(document).on("click", ".btnUpdate", function(event)
{
	$("#hidEmployeeIDSave").val($(this).closest("tr").find('#hidEmployeeIDUpdate').val()); 
	 //$("#txtName").val($(this).closest("tr").find('td:eq(0)').text()); 
	 $("#txtName").val($(this).closest("tr").find('td:eq(1)').text()); 
	 $("#txtSalary").val($(this).closest("tr").find('td:eq(2)').text()); 
	 $("#ddlDept").val($(this).closest("tr").find('td:eq(3)').text()); 
});

// FORM VALIDATION
function validateEmployeeForm() 
{
	//NAME
	if ($("#txtName").val().trim() == "") 
	{ 
		return "Insert employee name."; 
	}
	
	//SALARY
	if ($("#txtSalary").val().trim() == "") 
	{ 
		return "Insert salary."; 
	}
	
	//DEPARTMENT
	if ($("#ddlDept").val() == "0") 
	{ 
	return "Select Department."; 
	}
	return true;
}
