//달력 값 MySetting에 저장
function getMyFirstMain(dv){
  $.ajax({
    url: "/ilos/main/main_schedule_setting.acl",
    type: "POST",
    data: {
      FIRST_MAIN      : dv,
      encoding : "utf-8"
    },
    async: false,
    success: function(data) {
      if(dv == 1){
        getMainSchedule2('','1');
      }else if(dv == 2){
        getMainSchedule('');
      }else if(dv == 3){
        getMainScheduleList('');
      }
    },
    error: ajaxErrorMsg
  });  
}
//달력 조회
function getMainSchedule(dv,date){
  //월별 이동버튼을 클릭하였을 때
  if(typeof date === 'undefined'){
    var days = [31,28,31,30,31,30,31,31,30,31,30,31];
    var year = new Date().getFullYear();
    var month= new Date().getMonth()+1;
    var day  = new Date().getDate();
  
    //오늘보기
    if(dv == 'to'){
      if(Number(month) < 10) month = '0'+Number(month);
      if(Number(day) < 10)   day   = '0'+Number(day);
    }
    else{
      var a = getSchDate(); 
    
      //이전달
      if(dv == 'bf'){
        if(a[1] == 1){
          year  = Number(a[0])-1;
          month = 12;
        }
        else{
          year  = a[0];
          month = Number(a[1])-1;
        }
      }
      //다음달
      else if(dv == 'at'){
        if(a[1] == 12){
          year  = Number(a[0])+1;
          month = 1;
        }
        else{
          year  = a[0];
          month = Number(a[1])+1;
        }
      }
      //등록 또는 수정시 보고있던 일자로 유지 조회
      else{
        year  = a[0];
        month = a[1];
      }

      if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
        days[1] = 29;
      }

      if(days[month-1] < a[2]) day = days[month-1];
      else day = a[2];

      if(Number(month) < 10) month = '0'+Number(month);
      if(Number(day) < 10)   day   = '0'+Number(day);
    }
  }
  //날짜를 클릭하였을 때
  else{
    var a = date.split('-'); 
    var year = a[0];
    var month= a[1];
    var day  = a[2];
    if(Number(month) < 10) month = '0'+Number(month);
    if(Number(day) < 10)   day   = '0'+Number(day);
  }

  $("#loading").show();
  $.ajax({
    url: "/ilos/main/main_schedule.acl",
    type: "POST",
    data: {
      year     : year,
      month    : month,
      day      : day,
      encoding : "utf-8"
    },
    async: false,
    success: function(data) {
      $(".shedule_form").html(data);
      getWeekDay(year, month, day, 2);
      getMainScheduleView(year, month, day);
      $("#loading").hide();
    },
    error : function(jqXHR, exception){
      ajaxErrorMsg(jqXHR, exception);
      $("#loading").hide();
    }
  });
}

//목록 조회
function getMainScheduleList(dv){
  $("#loading").show();
  //월별 이동버튼을 클릭하였을 때
  var days = [31,28,31,30,31,30,31,31,30,31,30,31];
  var year = new Date().getFullYear();
  var month= new Date().getMonth()+1;
  var day  = new Date().getDate();
  
  //오늘보기
  if(dv == 'to'){
  if(Number(month) < 10) month = '0'+Number(month);
  if(Number(day) < 10)   day   = '0'+Number(day);
  }
  else{
  var a = getSchDate();
  
  //이전달
  if(dv == 'bf'){
    if(a[1] == 1){
      year  = Number(a[0])-1;
      month = 12;
    }
    else{
      year  = a[0];
      month = Number(a[1])-1;
    }
  }
  //다음달
  else if(dv == 'at'){
    if(a[1] == 12){
      year  = Number(a[0])+1;
      month = 1;
    }
    else{
      year  = a[0];
      month = Number(a[1])+1;
    }
  }
  //등록 또는 수정시 보고있던 일자로 유지 조회
  else{
    year  = a[0];
    month = a[1];
  }
  
  if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
    days[1] = 29;
  }
  
  if(days[month-1] < a[2]) day = days[month-1];
  else day = a[2];
  
  if(Number(month) < 10) month = '0'+Number(month);
  if(Number(day) < 10)   day   = '0'+Number(day);
  }
  
  $.ajax({
  url: "/ilos/main/main_schedule_list.acl",
  type: "POST",
  data: {
    year     : year,
    month    : month,
    viewDt   : year + '' + month,
    day      : day,
    encoding : "utf-8"
  },
  async: true,
  success: function(data) {
    $(".shedule_form").html(data);
    getWeekDay(year, month, day);
    getWeekDay(year, month, day, 2);
  },
  error: ajaxErrorMsg
  });
  $("#loading").hide();
}
//간략하게 보기 
function getMainSchedule2(dv,f_m){
  $("#loading").show();
  //월별 이동버튼을 클릭하였을 때
  if(typeof date === 'undefined'){
  var year = new Date().getFullYear();
  var month= new Date().getMonth()+1;
  var day  = new Date().getDate();
  
  //오늘보기
  if(dv == 'to'){
    if(Number(month) < 10) month = '0'+Number(month);
    if(Number(day) < 10)   day   = '0'+Number(day);
  }
  else{
    var a = getSchDate(); 
  
    //이전날ekffur
    if(dv == 'bf'){
      if(a[2] == 1){
        if(a[1] == 1){
          year  = Number(a[0])-1;
          month = 12;
        }
        else{
          year  = a[0];
          month = Number(a[1])-1;
        }
        if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
          day = 31;
        }else if(month == 4 || month == 6 || month == 9 || month == 11){
          day = 30;
        }else if( month==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
          day = 29;
        }else if(month == 2){
          day = 28;
        }
      }else{
          year  = a[0];
          month = a[1];
          day = Number(a[2])-1;
      }
    }
    //다음날
    else if(dv == 'at'){
      if(a[2] == 31 && (a[1] == 1 || a[1] == 3 || a[1] == 5 || a[1] == 7 || a[1] == 8 || a[1] == 10)){
        year  = a[0];
        month = Number(a[1])+1;
        day = 1;
      }else if(a[2] == 30 && (a[1] == 4 || a[1] == 6 || a[1] == 9 || a[1] == 11)){
        year  = a[0];
        month = Number(a[1])+1;
        day = 1;
      }else if( a[1]==2 && ( year%4==0 && year%100!=0 || year%400==0 ) ) {
        year  = a[0];
        month = Number(a[1])+1;
        day = 1;
      }else if(a[1] == 2 && a[2] == 28){
        year  = a[0];
        month = Number(a[1])+1;
        day = 1;
      }else{
        year = a[0];
        month = a[1];
        day = Number(a[2])+1;
      }
      if(a[1] == 12 && a[2] == 31){
        year  = Number(a[0])+1;
        month = 1;
        day   = 1;
      }
    }
    //등록 또는 수정시 보고있던 일자로 유지 조회
    else{
      year  = a[0];
      month = a[1];
      day   = a[2];
    }
    if(Number(month) < 10) month = '0'+Number(month);
    if(Number(day) < 10)   day   = '0'+Number(day);
  }
  }
  $.ajax({
  url: "/ilos/main/main_schedule.acl",
  type: "POST",
  data: {
    year     : year,
    month    : month,
    day      : day,
    encoding : "utf-8"
  },
  async: false,
  success: function(data) {
    $(".shedule_form").html(data);
    getWeekDay(year, month, day, 1);
    getMainScheduleView(year, month, day, f_m);
  },
  error: ajaxErrorMsg
  });
  $("#loading").hide();
}

//날짜 내역 조회
function getMainScheduleView(y,m,d,f_m){
  $.ajax({
    url: "/ilos/main/main_schedule_view.acl",
    type: "POST",
    data: {
      viewDt   : getSchDate()[0]+''+getSchDate()[1]+''+getSchDate()[2],
      first_main : f_m,
      encoding : "utf-8"
    },
    async: false,
    success: function(data) {
      $(".schedule_txt_view").html(data);
    },
    error: ajaxErrorMsg
  });
}

//날짜 가져오기
var getSchDate = function(){
  var date = $("#Month").attr('dt').split('.');
  var y = date[0];
  var m = date[1];
  var d = $("#Day").html();

  if(Number(m) < 10) m = "0" + Number(m);
  if(Number(d) < 10) d = "0" + Number(d);
  
  return [y,m,d];
}

//요일 표시
function getWeekDay(y,m,d,dv){
  if(dv == 1){
    $("#Month").html(setDateFormat2(y+'.'+m+'.'+d));
    $("#Month").attr("dt",y+'.'+Number(m));
  }
  else{
    $("#Month").html(setDateFormat1(y+'.'+m));
    $("#Month").attr("dt",y+'.'+Number(m));
  }
  
  $("#Day").html(Number(d));

  if(Number(m) < 10) m = "0" + Number(m);
  if(Number(d) < 10) d = "0" + Number(d);
  
  var date = y+'/'+m+'/'+d;
  $("#WeekDay").html("("+imaxsoft.i18n.Resource.getString('weekDay.'+new Date(date).getDay(),{})+")");
}
//등록폼 
function insertFormSchedule(){
  if($(".schedule_txt_insert").css("display") === 'block') {
    cencleSchedule('','inst');
  }
  else{
    $(".schedule_txt_view").hide();
    
    addCalendar("SCH_DT");
    $("#SCH_DT").val(setDateFormat(getSchDate()[0] + getSchDate()[1] + getSchDate()[2]));
    $(".schedule_txt_insert").show();
  }
}

//취소 컨트롤 inst 등록/ cal 달력/ list 목록
function cencleSchedule(a,b){
  if(typeof b !== 'undefined'){
    if(b == 'inst'){
      getMainScheduleView(getSchDate()[0], getSchDate()[1], getSchDate()[2]);
      
      $(".schedule_txt_view").show();
      $(".schedule_txt_insert").hide();
      var
      tmpTime = new Date(),
      tmpH = tmpTime.getHours(),
      tmpMI = tmpTime.getMinutes();
      
      $("#SCH_HH").val(tmpH);
      $("#SCH_MM").val(tmpMI);
      
      $("#SCH_TITLE").val("");
      $("#SCH_CONTENTS").val("");
    }
    if(b == 'cal'){
      $("#view_"+a).show();
      $("#update_"+a).hide();
      
      $(".hide-Schedule").hide();
      $(".show-Schedule").show();
      $(".schedule-show-control").show();
      $(".schedule-show-control").attr("change","show");
    }
    if(b == 'list'){
      $("#view_"+a).show();
      $("#update_"+a).hide();
    }
  }
}

//날짜 내역 상세 보기
function changeDetile(a,b,c,obj,dv,i){
  var c = $(obj).attr("change");
  if(c == 'show') {
    $("#hide_"+i+"_"+dv+"_"+a+"_"+b).show();
    $("#view_"+i+"_"+dv+"_"+a+"_"+b).show();
    $("#show_"+i+"_"+dv+"_"+a+"_"+b).hide();
    $(obj).attr("change","hide");
  }
  else{
    $("#show_"+i+"_"+dv+"_"+a+"_"+b).show();
    $("#view_"+i+"_"+dv+"_"+a+"_"+b).hide();
    $("#hide_"+i+"_"+dv+"_"+a+"_"+b).hide();
    $(obj).attr("change","show");
    cencleSchedule('1_'+b,c);      
  }
}

//수정폼 컨트롤 inst 등록/ cal 달력/ list 목록
function updateFormSchedule(a,b){
  if(b == 'inst'){}
  if(b == 'cal'){
    $("#view_"+a).hide();
    $("#update_"+a).show();
    $(".changeDetile").hide();
    $(".schedule-show-control").hide();  
  }
  if(b == 'list'){
    $("#view_1_"+a).hide();
    $("#update_1_"+a).show();
  }
}

//등록하기
function insertSchedule(){
  if($("#SCH_TITLE").val() == "" ){
    alert(imaxsoft.i18n.Resource.getString('alert.insertTitle'));
    $("#SCH_TITLE").focus();
    return;
  }
  if(!!!$('#SCH_DT').val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertDate'));
    $("#SCH_DT").focus();
    return;
  }
  if(!!!$('#SCH_HH').val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertHour'));
    $("#SCH_HH").focus();
    return;
  }
  if(!!!$('#SCH_MM').val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertMinute'));
    $("#SCH_MM").focus();
    return;
  }
  
  $.ajax({
    url: "/ilos/main/schedule_insert.acl",
    type: "POST",
    data: { 
      SCH_TITLE    : $("#SCH_TITLE").val(),  
      SCH_CONTENTS : $("#SCH_CONTENTS").val(),
      SCH_START_DT : getPureDate($("#SCH_DT").val()), 
      SCH_START_TM : $("#SCH_HH").val()+$("#SCH_MM").val(),
      SCH_DV_CD    : 1, 
      encoding : "utf-8"
          },
    async: false,
    success: function(data){
      if(data.isError){
        alert(data.message);
      }else{
        getMainSchedule();
      }
    },
    error : ajaxErrorMsg
  });
}

//수정하기
function updateSchedule(a,b,c){
  if($("#SCH_TITLE_"+a).val() == "" ){
    alert(imaxsoft.i18n.Resource.getString('alert.insertTitle'));
    $("#SCH_TITLE_"+a).focus();
    return;
  }
  if(!!!$('#SCH_DT_'+a).val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertDate'));
    $('#SCH_DT_'+a).focus();
    return;
  }
  if(!!!$('#SCH_HH_'+a).val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertHour'));
    $('#SCH_HH_'+a).focus();
    return;
  }
  if(!!!$('#SCH_MM_'+a).val()){
    alert(imaxsoft.i18n.Resource.getString('alert.insertMinute'));
    $('#SCH_MM_'+a).focus();
    return;
  }
  
  $.ajax({
    url: "/ilos/main/schedule_update.acl",
    type: "POST",
    data: { 
      SCH_SEQ      : a.replaceAll("1_", ""),
      SCH_TITLE    : $("#SCH_TITLE_"+a).val(),  
      SCH_CONTENTS : $("#SCH_CONTENTS_"+a).val(),
      SCH_START_DT : getPureDate($("#SCH_DT_"+a).val()),  
      SCH_START_TM : $("#SCH_HH_"+a).val()+$("#SCH_MM_"+a).val(),
      SCH_DV_CD    : 1, 
      encoding : "utf-8"
          },
    async: false,
    success: function(data){
      if(data.isError){
        alert(data.message);
      }else{
        if(b == 'cal'){  //달력형
          if(c == '1'){
              getMainSchedule2('','1');         
          }else{
              getMainSchedule();
          }
        }
        else{//목록형
          getMainScheduleList();
        }
      }
    },
    error : ajaxErrorMsg
  });
}

//삭제하기
function deleteSchedule(a,b,c){
  if(!confirm(imaxsoft.i18n.Resource.getString('alert.delete'))) {
    return;
  }
  
  $.ajax({
    url: "/ilos/main/schedule_delete.acl",
    type: "POST",
    data: { 
      SCH_SEQ  : a,  
      encoding : "utf-8"
          },
    async: false,
    success: function(data){
      if(data.isError){
        alert(data.message);
      }else{
        if(b == 'cal'){  //달력형
          if(c == '1'){
          getMainSchedule2('','1');
          }else{
          getMainSchedule();
          }
        }
        else{//목록형
          getMainScheduleList();
        }
      }
    },
    error : ajaxErrorMsg
  });
}