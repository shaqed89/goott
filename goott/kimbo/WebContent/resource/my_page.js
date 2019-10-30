$(function(){
	$('#my_calendar').monthly({
		  mode :'event',
		  xmlUrl : '../plugin/kimbo_events.xml',
		  eventlist : true
		});
	
	//일정등록 다이얼로그
	$("#schedule_add").click(function(){
		$("#add_dialog").dialog("open");
	});
	
	//일정 시작 날짜 선택
	$("#schedule_start_date").datepicker({
		dateFormat : "yy년 mm월 dd일", //날짜 표시 형식
		showButtonPanel: true
	});
	
	//일정 종료 날짜 선택
	$("#schedule_end_date").datepicker({
		dateFormat : "yy년 mm월 dd일", //날짜 표시 형식
		showButtonPanel: true
	});
	
	//시간 설정
	var time_str = "<option>--------</option>";
	for(i=0; i<12; i++){
		time_str += "<option>"+(i+1)+":00</option>"
	}
	
	$("#schedule_start_time").append(time_str);
	$("#schedule_end_time").append(time_str);
	
	//다이얼로그 옵션설정
	$("#add_dialog").dialog({
		autoOpen : false,
		width : 350,
		resizable : false,
		buttons : {등록 : function(){
			var data = $("#schedule_name").val() 
						+ " , " 
						+ $("#schedule_start_date").val()
						+ " , "
						+ $("#schedule_end_date").val()
						+ " , "
						+ $("#schedule_start_AMPM").val()
						+ " , "
						+ $("#schedule_start_time").val()
						+ " , "
						+ $("#schedule_end_AMPM").val()
						+ " , "
						+ $("#schedule_end_time").val()
						+ " , "
						+ $("#schedule_color").val();
			console.log(data);
			
			$("#schedule_name").val("");
			$("#schedule_start_date").val("");
			$("#schedule_end_date").val("");
			$("#schedule_start_AMPM").val("AM");
			$("#schedule_start_time").val("--------");
			$("#schedule_end_AMPM").val("AM");
			$("#schedule_end_time").val("--------");
			$("#schedule_color").val("red");

			$("#add_dialog").dialog("close");
		}, 초기화 : function(){
			$("#schedule_name").val("");
			$("#schedule_start_date").val("");
			$("#schedule_end_date").val("");
			$("#schedule_start_AMPM").val("AM");
			$("#schedule_start_time").val("--------");
			$("#schedule_end_AMPM").val("AM");
			$("#schedule_end_time").val("--------");
			$("#schedule_color").val("red");
			
			
		}, 닫기 : function(){
			
			$("#schedule_name").val("");
			$("#schedule_start_date").val("");
			$("#schedule_end_date").val("");
			$("#schedule_start_AMPM").val("");
			$("#schedule_start_time").val("");
			$("#schedule_end_AMPM").val("");
			$("#schedule_end_time").val("");
			$("#schedule_color").val();
			
			$("#add_dialog").dialog("close");
		}}
	});
	
});