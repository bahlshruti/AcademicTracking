<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Academic Tracking System</title>
<script type="text/javascript">
function validate()
{
	var course_code=document.courseform.code.value;
	var course_name=document.courseform.Name.value;
	var course_cap=document.courseform.Cap.value;
	var enforcePrereqs=document.courseform.EnforcePrerequites.options[EnforcePrerequites.selectedIndex].value;
	var hasafinal=document.courseform.hasFinal.options[hasFinal.selectedIndex].value;
	var hasproject=document.courseform.project.options[project.selectedIndex].value;
	var num_midterms=document.courseform.Midterms.value;
	var num_assignmnts=document.courseform.assignments.value;
	var regex=/^[a-zA-Z ]+$/;
	var reg=/^[0-9]*$/;
	var num=/^[0-2]$/;
	if(course_code==""||course_code < 100000 || course_code > 999999 ||reg.test(course_code)==false)
		{
		  alert("enter 6 digits numeric code!");
		  document.courseform.code.focus();
		  return false;
		} 
	else if(course_name==""||regex.test(course_name)==false)
    	  {
          alert("name should only contain alphabets and spaces");
		  document.courseform.Name.focus();
		  return false;
    	  }
	else if(course_cap==""||(reg.test(course_cap)==false))
		{
			alert("enter valid  size!");
		  document.courseform.Cap.focus();
		  return false;
		}
	else if(enforcePrereqs==""||!(enforcePrereqs.equalsIgnoreCase("1")) || !(enforcePrereqs.equalsIgnoreCase("2")))
		{
			alert("should be either Y/y or N/n");
		  document.courseform.EnforcePrerequites.focus();
		  return false;
		}
	else if (num_midterms==""||num.test(num_midterms)==false)
		{
			alert("the number of midterms should range from 0 to 2");
			document.courseform.Midterms.focus();
			 return false;
		}
		
		else if (num_assignmnts==""||num_assignmnts < 0 || num_assignmnts > 5) {
		
			alert("the number of assignments should range from 0 to 5");
			document.courseform.assignments.focus();
			 return false;
		}
	
	else if (hasafinal==""||!(hasafinal.equalsIgnoreCase("1")) || !(hasafinal.equalsIgnoreCase("2")))
		{
		alert("should be either Y/y or N/n");
		  document.courseform.hasFinal.focus();
		  return false;
		}
	else if (hasaproject==""||!(hasproject.equalsIgnoreCase("1") || hasproject.equalsIgnoreCase("2")))
	{
	alert("should be either Y/y or N/n");
	  document.courseform.project.focus();
	  return false;
	}
	
	
	else return true;
}
</script>

</head>
<body>
<%@page session="true"  %>
	
Enter details of the course you want to add to the university : <br><br>
<form onsubmit="return validate()" name= "courseform" method="post" action="CreateCourse"  >
Course code : 
<input type ="text" name="code" ><br>
Course name :
<input type= "text" name= "Name"><br>
Maximum Students Allowed : 
<input type= "text" name= "Cap"><br>
Does it requires PreRequistes ?
 <select name="EnforcePrerequites">
    <option value="true">true</option>
    <option value="false">false</option> 
    </select><br>
No. of Midterms allowed :
<input type= "text" name= "Midterms"><br>
No. of assignments allowed :
<input type= "text" name= "assignments"><br>
Is there any final ? <select name= "hasFinal">
    <option value="true">true</option>
    <option value="false">false</option> 
    </select><br>
Does it involve any project ?
 <select name= "project">
  <option value="true">true</option>
    <option value="false">false</option> 
    </select>
<br><br>
<input type= "submit" name="create" value= "Create course"  > <br>
</form>
<form>
<input type= "submit" name="back" value= "Back" onclick="window.location='./index.jsp'">
</form>


</body>
</html>