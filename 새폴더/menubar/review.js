$(document).ready(function() {
    $("#checkAll").click(function() {
        if($("#checkAll").is(":checked")) $("input[name=check]").prop("checked", true);
        else $("input[name=check]").prop("checked", false);
    });
    
    $("input[name=check]").click(function() {
        var total = $("input[name=check]").length;
        var checked = $("input[name=check]:checked").length;
        
        if(total != checked) $("#checkAll").prop("checked", false);
        else $("#checkAll").prop("checked", true); 
    });
});