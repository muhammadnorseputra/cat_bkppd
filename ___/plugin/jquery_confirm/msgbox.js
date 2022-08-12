/**
 * message box layer
 * @author Li chun yin
 * @since 2013.11.23
 */
var msgbox	= function( option ){
	/**
	 * setting message box vars
	 */
	var message		= typeof( option.message ) == 'undefined' ? 'System error.' : option.message;
	var type		= typeof( option.type ) == 'undefined' ? 'alert' : option.type;
	var	callback	= typeof( option.callback ) == 'undefined' ? false : option.callback;
	var	buttons		= [];
	var inputs		= [];
	var isset_input	= false;
	
	/*
	 * setting var buttons
	 */
	if(typeof( option.buttons ) == 'undefined'){
		switch( type ){			
			case 'confirm':
				buttons	= [{'type' : 'yes', 'value': 'Yes'}, {'type' : 'no', 'value': 'No'}];
				break;
			case 'prompt':
				buttons	= [{'type' : 'yes', 'value': 'Confirm'}];
				break;
			case 'alert':
			case 'info':
			case 'error':
			default:
				buttons	= [{'type' : 'close', 'value': 'Confirm'}];
		}
	}else{
		buttons	= option.buttons;
	}
	
	/*
	 * setting var inputs
	 */
	if( type == 'prompt' && typeof( option.inputs ) == 'undefined'){
		inputs	= [{'type': "text", 'name' : 'prompt_default_name' }];
		isset_input	= false;
	}else if( type == 'prompt' ){
		inputs		= option.inputs;
		isset_input	= true;
	}
	
	/**
	 * layer
	 */
	/*
	 * init vars
	 */
	var win_width		= jQuery(window).innerWidth();
	var win_height		= jQuery(window).innerHeight();
	var scroll_top		= jQuery(window).scrollTop();
	var scroll_left		= jQuery(window).scrollLeft();
	var html_over_flow	= jQuery('html').css('overflow');
	
	
	/*
	 * mask layer
	 */
	var tag = 
		'<div class="jquery-msgbox-mask"></div>';
	jQuery('body').append(tag);
	jQuery('.jquery-msgbox-mask').css({
		'position'			: 'fixed',
		'top'				: '0px',
		'left'				: '0px',
		'opacity'			: '0.5',
		'z-index'			: '9999',
		'background-color'	: 'rgb(0, 0, 0)',
		'height'			: win_height,
		'width'				: win_width,
		'display'			: 'block'
	});
	
	
	/*
	 * make tag
	 */
	var button_tags	= [];
	for(var i in buttons){
		var button_type		= typeof( buttons[i].type ) == 'undefined' ? 'close' : buttons[i].type;
		var button_value	= typeof( buttons[i].value ) == 'undefined' ? 'Confirm' : buttons[i].value;
		button_tags[i]	= 
			'<input type="button" value="' + button_value + '" />'
		+	'<input type="hidden" name="button_tag_hidden" value="' + button_type + '" />';
		
	};

	var msgbox_input_tags	= '';
	if(type == 'prompt'){
		var input_tags	= [];
		for(var i in inputs){
			var input_type		= typeof( inputs[i].type ) == 'undefined' ? 'text' : inputs[i].type;
			var input_name		= typeof( inputs[i].name ) == 'undefined' ? '' : inputs[i].name;
			var input_value		= typeof( inputs[i].value ) == 'undefined' ? '' : inputs[i].value;
			var input_label_tag	= typeof( inputs[i].label ) == 'undefined' 
								? '' 
								: '<label class="jquery-msgbox-label" for="jquery-msgbox-input-id-' + i + '">' + inputs[i].label + '</label>';
			
			if( input_type == 'textarea' ){
				input_tags[i]	= input_label_tag
				+	'<textarea name="' + input_name + '" value="' + input_value + '" id="jquery-msgbox-input-id-' + i + '"></textarea>';
			}else{
				input_tags[i]	= input_label_tag
				+	'<input type="' + input_type + '" name="' + input_name + '" value="' + input_value + '" id="jquery-msgbox-input-id-' + i + '" />';				
			}
		}
		
		msgbox_input_tags	= '<div class="jquery-msgbox-inputs">' + input_tags.join("\n") + '</div>';
	}
	
	var tag	= 
		'<div class="jquery-msgbox">'
	+		'<div class="jquery-msgbox-wrapper jquery-msgbox-' + type + '">'
	+			'<form method="post" action="#">' 
	+				'<div class="jquery-msgbox-text">'
	+					message
	+					msgbox_input_tags
	+				'</div>'
	+				'<div class="jquery-msgbox-buttons">'
	+					button_tags.join("\n")
	+				'</div>'
	+			'</form>'
	+		'</div>'
	+	'</div>';
	jQuery('body').append(tag);
	// base css
	jQuery('.jquery-msgbox').css({
		'display'			: 'block',
		'position'			: 'absolute',
		'width'				: 'auto',
		'height'			: 'auto',
	});
	
	/*
	 * set tag css style
	 */
	var box_height	= jQuery('.jquery-msgbox').innerHeight();
	var box_width	= jQuery('.jquery-msgbox').innerWidth();
	if( box_width > win_width / 2 ) box_width = win_width / 2;
	if( box_width < 230 ) box_width = 230;
	if( box_height > win_height ) box_height = win_height;
	
	var top			= ( win_height - box_height ) / 2 + scroll_top;
	var left		= ( win_width - box_width ) / 2 + scroll_left;
	
	var msgbox_css	= {
			'display'			: 'block',
			'position'			: 'absolute',
			'top'				: 0 - box_height,
			'left'				: left,
			'width'				: box_width,
			'height'			: box_height,
			'z-index'			: '10000',
			'word-wrap'			: 'break-word',
			'box-shadow'		: '0px 0px 15px rgba(0, 0, 0, 0.5)',
			'border-radius'		: '6px',
			'background-color'	: 'rgb(255, 255, 255)'
	};
	var msgbox_wrapper_css	= {
		'height'	: 'auto',
		'min-height': '80px'
	};
	jQuery('.jquery-msgbox').css( msgbox_css );
	jQuery('.jquery-msgbox-wrapper').css( msgbox_wrapper_css );
	jQuery('.jquery-msgbox').animate({'top':top}, 'fast');
	
	//reset css height
	var box_height	= jQuery('.jquery-msgbox').innerHeight();
	if( box_height > win_height ) box_height = win_height;
	jQuery('.jquery-msgbox').innerHeight(box_height);
	
	//jquery-msgbox-text height
	text_height = jQuery('.jquery-msgbox').height() - jQuery('.jquery-msgbox-buttons').innerHeight();
	var msgbox_text_css	= {
			'overflow-x'	:'hidden',
			'overflow-y'	:'auto',
	};
	if( box_height != win_height)
	{
		msgbox_text_css['display']	= 'table-cell';
		msgbox_text_css['vertical-align']	= 'middle';
	}
	jQuery('.jquery-msgbox-text').css(msgbox_text_css);
	jQuery('.jquery-msgbox-text').innerHeight(text_height);
	
	//reset position top
	var top			= ( win_height - box_height ) / 2 + scroll_top;
	jQuery('.jquery-msgbox').animate({'top':top}, 'fast');
	
	//hidden scroller bar
	jQuery('html').css('overflow','hidden');
	
	/*
	 * button click
	 */
	jQuery('.jquery-msgbox>.jquery-msgbox-wrapper>form>.jquery-msgbox-buttons>:button').click(function(){		
		var callback_data	= false;
		
		switch(jQuery(this).next(':hidden').val()){
			case 'close':
				break;
			case 'yes':				
				callback_data	= true;
				if(type == 'prompt' && isset_input == true ){
					callback_data	= jQuery(this).closest('form').serializeArray();
				}else if( type == 'prompt' && isset_input == false ){
					callback_data	= jQuery(this).closest('form').find(':text').val();
				}
				break;
			case 'no':
				callback_data	= false;
			default:
				break;
		}
		
		jQuery('.jquery-msgbox-mask,.jquery-msgbox').remove();
		jQuery('html').css('overflow', html_over_flow );
		
		if( callback != false ) callback( callback_data );
		return false;
	});
};
jQuery.extend({
	msgbox : msgbox
});	