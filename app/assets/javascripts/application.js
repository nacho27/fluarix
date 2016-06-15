// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require fingerprint

$("document").ready(function(){

	var fingerprint = new Fingerprint().get();
	$('#survey_deviceId').val(fingerprint);
	console.log(fingerprint);
	function bindCheckBoxAndTextInput(checkboxId, textInputId){
		if ($(checkboxId).is(':checked') == true){
	        $(textInputId).val('1').prop('disabled', false);
	        
	    } else {
	        $(textInputId).val('').prop('disabled', true);
	        
	    }
	}

	
	$('#q2Chk1').change(function(){
		bindCheckBoxAndTextInput('#q2Chk1','#survey_q2Ans1');
	});
	$('#q2Chk2').change(function(){
		bindCheckBoxAndTextInput('#q2Chk2','#survey_q2Ans2');
	});
	$('#q2Chk3').change(function(){
		bindCheckBoxAndTextInput('#q2Chk3','#survey_q2Ans3');
	});
	$('#q2Chk4').change(function(){
		bindCheckBoxAndTextInput('#q2Chk4','#survey_q2Ans4');
	});
	$('#q2Chk5').change(function(){
		bindCheckBoxAndTextInput('#q2Chk5','#survey_q2Ans5');
	});
	
});
