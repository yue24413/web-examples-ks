var MINIMALDOG = MINIMALDOG || {};

(function ($) {

	// USE STRICT
	"use strict";

	var $window = $(window);
	var $document = $(document);

	MINIMALDOG.header = {
		init: function () {
			MINIMALDOG.header.offCanvasMenu();			
		},		

		/* ============================================================================
		 * Offcanvas Menu
		 * ==========================================================================*/
		offCanvasMenu: function () {
			var $backdrop = $('<div class="mnmd-offcanvas-backdrop"></div>');
			var $offCanvas = $('.js-mnmd-offcanvas');
			var $offCanvasToggle = $('.js-mnmd-offcanvas-toggle');
			var $offCanvasClose = $('.js-mnmd-offcanvas-close');
			var $offCanvasMenuHasChildren = $('.navigation--offcanvas').find('li.menu-item-has-children > a');
			var menuExpander = ('<div class="submenu-toggle"><i class="iconfont icon-unfold"></i></div>');
			$(".menu-item").each(function (k, v) {
				if ($(v).find("li").length > 0) {
					$(v).children("a").append(menuExpander);
				}
			});

			$backdrop.on('click', function () {
				$offCanvas.removeClass('is-active');
				$(this).fadeOut(200, function () {
					$(this).detach();
				});
			});

			$offCanvasToggle.on('click', function (e) {
				e.preventDefault();
				var targetID = $(this).attr('href');
				var $target = $(targetID);
				$target.toggleClass('is-active');
				$backdrop.hide().appendTo(document.body).fadeIn(200);
			});

			$offCanvasClose.on('click', function (e) {
				e.preventDefault();
				var targetID = $(this).attr('href');
				var $target = $(targetID);
				$target.removeClass('is-active');
				$backdrop.fadeOut(200, function () {
					$(this).detach();
				});
			});

			/*$offCanvasMenuHasChildren.append(function() {
				return $(menuExpander).on('click', function(e){
					e.preventDefault();
					var $subMenu = $(this).parent().siblings('.sub-menu');
					$subMenu.slideToggle(200);
				});
			}); */


			$offCanvasMenuHasChildren.on('click', function (e) {
				if ($(this).siblings('.sub-menu').length > 0) {
					e.preventDefault();
					var $subMenu = $(this).siblings('.sub-menu');
					$subMenu.slideToggle(200);
				}
			});

		},
	};

	MINIMALDOG.documentOnReady = {
		init: function () {
			MINIMALDOG.header.init();			
		}, 
	};

	$document.ready(MINIMALDOG.documentOnReady.init);

})(jQuery);

