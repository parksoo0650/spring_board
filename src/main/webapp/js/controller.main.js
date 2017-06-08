var board = board || {};

board.context=(function(){
	var init = function(context){
		onCreate();
	};
	var onCreate = function(){
		setContentView();
	};
	var setContentView = function(){
		$.when(
				$.getScript(context+'/js/domain.session.js'),
				$.getScript(context+'/js/board_view.js'),
				$.Deferred(function(deferred){
					$(Deferred.resolve);
				})
				).done(function(){
					
		});
		var board = function(){
			$('wrapper').append(list());

		};
	};
	return {
		board : board
	}
})();