//** jQuery Scroll to Top Control script- (c) Dynamic Drive DHTML code library: http://www.dynamicdrive.com.
//** Available/ usage terms at http://www.dynamicdrive.com (March 30th, 09')
//** v1.1 (April 7th, 09'):
//** 1) Adds ability to scroll to an absolute position (from top of page) or specific element on the page instead.
//** 2) Fixes scroll animation not working in Opera.

let _base_url_;
const _script_list_ = document.getElementsByTagName('script');
for (let i = 0; i < _script_list_.length; i++) {
    let _item_src_ = _script_list_[i].src;
    if (_item_src_ && _item_src_.toUpperCase().indexOf('/ASSETS') > 0) {
        _base_url_ = _item_src_.substring(0, _item_src_.toUpperCase().indexOf('/ASSETS'));
        console.log(_base_url_) //http://localhost:63342/web-exanples-ks/src/main/webapp
        break;
    }
}

//源  http://www.dynamicdrive.com/dynamicindex3/scrolltop.html
var scrolltotop = {

    //startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
    //scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
    setting: { startline: 100, scrollto: 0, scrollduration: 500, fadeduration: [500, 100] },
    controlHTML: '<img src="' + _base_url_ + '/ASSET/img/istop.png" style="width:40px;" />', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
    controlattrs: { offsetx: 50, offsety: 50 }, //offset of control relative to right/ bottom of window corner
    anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links

    state: { isvisible: false, shouldvisible: false },

    scrollup: function () {
        if (!this.cssfixedsupport) //if control is positioned using JavaScript
            this.$control.css({ opacity: 0 }) //hide control immediately after clicking it
        var dest = isNaN(this.setting.scrollto) ? this.setting.scrollto : parseInt(this.setting.scrollto)
        if (typeof dest == "string" && jQuery('#' + dest).length == 1) //check element set by string exists
            dest = jQuery('#' + dest).offset().top
        else
            dest = 0
        this.$body.animate({ scrollTop: dest }, this.setting.scrollduration);
    },

    keepfixed: function () {
        var $window = jQuery(window)
        var controlx = $window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
        var controly = $window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
        this.$control.css({ left: controlx + 'px', top: controly + 'px' })
    },

    togglecontrol: function () {
        var scrolltop = jQuery(window).scrollTop()
        if (!this.cssfixedsupport)
            this.keepfixed()
        this.state.shouldvisible = (scrolltop >= this.setting.startline) ? true : false
        if (this.state.shouldvisible && !this.state.isvisible) {
            this.$control.stop().show();
            this.state.isvisible = true
        }
        else if (this.state.shouldvisible == false && this.state.isvisible) {
            this.$control.stop().hide();
            this.state.isvisible = false
        }
    },
    offset: function (x, y) {
        scrolltotop.controlattrs.offsetx = x;
        scrolltotop.controlattrs.offsety = y;
    },
    init: function () {
        jQuery(document).ready(function ($) {
            var mainobj = scrolltotop
            var iebrws = document.all
            mainobj.cssfixedsupport = !iebrws || iebrws && document.compatMode == "CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
            mainobj.$body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body')
            mainobj.$control = $('<div id="topcontrol">' + mainobj.controlHTML + '</div>')
                .css({ position: mainobj.cssfixedsupport ? 'fixed' : 'absolute', bottom: mainobj.controlattrs.offsety, right: mainobj.controlattrs.offsetx, display: 'none', cursor: 'pointer', zIndex: "1000" })
				.attr({ title: '回到顶部' })
				.click(function () { mainobj.scrollup(); return false })
				.appendTo('body')
            if (document.all && !window.XMLHttpRequest && mainobj.$control.text() != '') //loose check for IE6 and below, plus whether control contains any text
                mainobj.$control.css({ width: mainobj.$control.width() }) //IE6- seems to require an explicit width on a DIV containing text
            mainobj.togglecontrol()
            $('a[href="' + mainobj.anchorkeyword + '"]').click(function () {
                mainobj.scrollup()
                return false
            })
            $(window).bind('scroll resize', function (e) {
                mainobj.togglecontrol()
            })
        })
    }
}