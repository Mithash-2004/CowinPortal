$(document).ready(function()
{
    console.log("loaded");
    var state =$("#stateDropdown");
    var district=$("#districtDropdown");
    var btn=$('#btn');
    var id=0;
    //call API

    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/admin/location/states",
        success:function(results){
            console.log(results.states);
            console.log(results.states[0]);
            $.each(results.states, function(key,value){
                state.append('<option value=' + value.state_id + '>' +value.state_name+ '</option>');            })
        }
    });

    $('#stateDropdown').change(function(){
         var stateId=$(this).val();
        console.log("stateId: "+ stateId);

    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/admin/location/districts/" + stateId,
        success: function(results)
        {
            console.log(results.districts);
            district.empty();
            $.each(results.districts, function(key,value){
                district.append('<option value=' + value.district_id + '>' +value.district_name+ '</option>');})
        }
    });
});



var hos=$('#tableCreate');

$('#btn').click(function()
{
    var district=$('#districtDropdown').val();
        console.log(district);
        var d=new Date();
        var today_date=d.getDate();
    $.ajax({
        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id="+district+"&date="+today_date,
        success: function(results)
        {
            hos.empty();
                hos.append('<thead class="table-dark">');
                hos.append('<th class="p-3 border" scope="col"> SL. NO.</th>');     
                hos.append('<th class="p-3 border" scope="col"> NAME</th>');
                hos.append('<th class="p-3 border" scope="col"> CENTER ID</th>');
                hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF DOSE 1</th>');
                hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF DOSE 2</th>');
                hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF CAPACITY</th>');
                hos.append('<th class="p-3 border" scope="col"> FEE</th>');
                hos.append('<th class="p-3 border" scope="col"> MINIMUM AGE</th>');
                hos.append('<th class="p-3 border"  scope="col"> VACCINE</th>');
                hos.append('<th class="p-3 border" scope="col"> SLOTS</th>');
                hos.append('</thead>');
            $.each(results.sessions, function(key,value){
                id=id+1;
                hos.append('<tr>');
                hos.append('<td class="p-3 border">'+ id + '</td>');
                hos.append('<td class="p-3 border" value='+value.name+'>'+value.name+'</td>');
                hos.append('<td class="p-3 border" value='+value.center_id+'>'+value.center_id+'</td>');
                $.each(results.sessions.)
                hos.append('<td  class="p-3 border" value='+value.available_capacity_dose1+'>'+value.available_capacity_dose1+'</td>');
                hos.append('<td  class="p-3 border" value='+value.available_capacity_dose2+'>'+value.available_capacity_dose2+'</td>');
                hos.append('<td  class="p-3 border" value='+value.available_capacity+'>'+value.available_capacity+'</td>');
                hos.append('<td  class="p-3 border" value='+ value.fee+'>'+value.fee+'</td>');
                hos.append('<td  class="p-3 border" value='+ value.min_age_limit+'>'+value.min_age_limit+'</td>');
                hos.append('<td  class="p-3 border" value='+value.vaccine+'>'+value.vaccine+'</td>');
                hos.append('<td   class="p-3 border" value='+value.slots+'>'+value.slots+'</td>');
                hos.append('</tr>');
                
            })
            id=0;

        }
});
});
});

