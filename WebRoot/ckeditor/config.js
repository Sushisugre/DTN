﻿/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.height=520;
	config.toolbar =
[
        ['Cut','Copy','Paste','PasteText','PasteFromWord'],
        ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
        ['TextColor','BGColor'],
        ['Font','FontSize'],['ImageButton']
];
};
