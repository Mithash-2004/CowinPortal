$(document).ready(function()
{
    console.log("loaded");
    var state =$("#stateDropdown");
    var district=$("#districtDropdown");
    var btn=$('#btn');
    var hos=$('#hosDropdown');
    var dat=$('#dateDropdown');
    var slot=$('#timeDropdown');

    //call API

    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/admin/location/states",
        success:function(results){
			console.log(results.state);
            $.each(results.states, function(key,value){
                state.append('<option value=' + value.state_id + '>' +value.state_name+ '</option>');   
				       
            });
        }
		
    });

    $('#stateDropdown').change(function(){
          var stateId=$(this).val();
        console.log("stateId: "+ stateId);
		stateval=$('#stateDropdown').find(":selected").text();
		$.post(stateval);
		console.log(stateval);
		
       
    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/admin/location/districts/" + stateId,
        success: function(results)
        {
            console.log(results.districts);
            district.empty();
            $.each(results.districts, function(key,value){
                district.append('<option value=' + value.district_id + '>' +value.district_name+ '</option>');
         })
        
        }
    });
});
  $('#districtDropdown').change(function(){
      var districtId=$(this).val();
      console.log("district:"+districtId);
		districtval=$('#districtDropdown').find(":selected").text();
		console.log(districtval);
      var d=new Date();
    var today_date=d.getDate();

    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id="+districtId+"&date="+today_date,
        success: function(results)
        {
            console.log(results.sessions);
            hos.empty();
            $.each(results.sessions,function(key,value){
                hos.append('<option value='+value.name+'>'+value.name+'</option>');
            });
        }
    });

  });
  $('#dateDropdown').change(function(){
    var district=$('#districtDropdown').val();
    var dis=$(this).val();
	hospital=$('#hosDropdown').find(":selected").text();
	console.log(hospital);
    var today=dis.split("-").reverse().join("-");
    console.log(today);
    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id="+district+"&date="+today,
        success: function(results)
        {
            slot.empty();
            
                $.each(value.sessions,function(key,value){
					
					if(value.slots!="undefined"){
                    slot.append('<option>'+value.slots+'</option>');
					}else{
							return false;	
					}
                    
            });
			
        
		timeslot=$('#timeDropdown').find(":selected").text();
	
		
        }
    
    });
});


});



