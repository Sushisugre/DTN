//首先，当点击“新增便签”按钮时，调用fancybox插件。


$(function(){
	$("#fancy").fancybox({  
		'modal':false,
		'overlayShow':true,
		'hideOnOverlayClick':false,
		'hideOnContentClick':false,
		'enableEscapeButton':false,
		'showCloseButton':false,
		'centerOnScroll':true,
		'autoScale':false,
	});
	
	$("#fancy2").fancybox({  
		'modal':false,
		'overlayShow':true,
		'hideOnOverlayClick':false,
		'hideOnContentClick':false,
		'enableEscapeButton':false,
		'showCloseButton':false,
		'centerOnScroll':true,
		'autoScale':false,
	});
});




$(function(){ 
    var tmp; 
     
    $('.note').each(function(){ 
        tmp = $(this).css('z-index'); 
        if(tmp>zIndex) zIndex = tmp; 
    }) 
    make_draggable($('.note')); 
}); 
var zIndex = 0; 

function make_draggable(elements){ 
    elements.draggable({ 
        opacity: 0.8, 
        containment:'parent', 
        start:function(e,ui){ ui.helper.css('z-index',++zIndex); }, 
        stop:function(e,ui){ 
            $.get('update_position.php',{ 
                  x        : ui.position.left, 
                  y        : ui.position.top, 
                  z        : zIndex, 
                  id    : parseInt(ui.helper.find('span.data').html()) 
            }); 
        } 
    }); 
} 