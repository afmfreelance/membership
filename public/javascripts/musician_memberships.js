$(document).ready(function(){
	/*$('#add_membership').click(function(){
			$('#membership_history').load('/memberships/new');
		return false;
	});*/
	$('#edit_musician_history').toggle(function(){
		$('#musician_history_display').hide();
//edit_musician_history').val('Display membership history');
		$('#musician_history_edit').show();
		return false;
	}, function(){
			$('#musician_history_display').show();
			$('#musician_history_edit').hide();
			return false;
		});
});
