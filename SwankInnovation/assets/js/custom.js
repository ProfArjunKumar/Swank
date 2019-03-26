/*
 Project Name : Cooking
 Author Company : Grow Scales
 Project Date: 09-07-2017
 Author Website : http://growscales.com/
 */
/*
 1. Loader
 2. Course Slider
 3. Screen Height
 4. On load Scroll top
 5. Count Function
 6. Contact Form
 7. Blog Slider
 8. Aside Slider
 9. Animation
 10.Menu

 */

jQuery(document).ready(function($) {

    "use strict";

     var win = $(window);
    //$("#loading").delay(2000).fadeOut(500);
    win.on('load', function() {
        $("#pre_loader").addClass('down');
    });
    //============================================
    //height
    //=============================================
    $(".screen-height").css({
        'height': window.innerHeight
    });

    win.resize(function() {
        $(".screen-height").css({
            'height': window.innerHeight
        });
    });

    //===================================================
    // Course Slider
    //===================================================
    var owl = $("#courses-slider");

    owl.owlCarousel({

        itemsCustom: [
            [0, 1],
            [450, 1],
            [600, 2],
            [700, 2],
            [1000, 3],
            [1200, 3],
            [1400, 3],
            [1600, 3]
        ],
        navigation: true,
        pagination: false,
        autoPlay: true,
        navigationText: ['<i class="fa fa-chevron-circle-left" aria-hidden="true"></i>', '<i class="fa fa-chevron-circle-right" aria-hidden="true"></i>']

    });

    //===============================================
    //On load Scroll Top
    //===============================================
    $('html, body').scrollTop(0);

    win.on('load', function() {
        setTimeout(function() {
            $('html, body').scrollTop(0);
        }, 0);
    });
//==================================================
//POp up
//===============================================
    function newsletter() {
        $("#newsletter").modal();
    }
    setTimeout(newsletter, 30000);
    //========================================
    // count function
    //======================================
    $('.count').each(function() {
       $(this).appear(function() {
            $(this).data('count', parseInt($(this).html(), 10));
            $(this).html('0');
            count($(this));
            speed: 300 // how long it should take to count between the target numbers
        });
    });

    function count($this) {
        var current = parseInt($this.html(), 10);
        current = current + 10; /* Where 50 is increment */
        $this.html(++current);
        if (current > $this.data('count')) {
            $this.html($this.data('count'));
        } else {
            setTimeout(function() {
                count($this)
            }, 10);
        }
    }
    /* ---------------------------------------------------------------------- */
    /*  Contact Form
     /* ---------------------------------------------------------------------- */

    var submitContact = $('#submit_contact'),
        message = $('#msg');

    submitContact.on('click', function(e) {
        e.preventDefault();

        var $this = $(this);

        $.ajax({
            type: "POST",
            url: 'contact.php',
            dataType: 'json',
            cache: false,
            data: $('#contact-form').serialize(),
            success: function(data) {

                if (data.info !== 'error') {
                    $this.parents('form').find('input[type=text],textarea,select').filter(':visible').val('');
                    message.hide().removeClass('success').removeClass('error').addClass('success').html(data.msg).fadeIn('slow').delay(5000).fadeOut('slow');
                } else {
                    message.hide().removeClass('success').removeClass('error').addClass('error').html(data.msg).fadeIn('slow').delay(5000).fadeOut('slow');
                }
            }
        });
    });
    //======================================================
    //Blog sync two slider
    //=====================================================

    var sync1 = $("#sync1");
    var sync2 = $("#sync2");

    sync1.owlCarousel({
        items: 1,
        itemsDesktop: [1199, 1],
        itemsDesktopSmall: [979, 1],
        itemsTablet: [768, 1],
        itemsMobile: [479, 1],
        itemsMobileSmall: [320, 1],
        slideSpeed: 1000,
        navigation: true,
        pagination: false,
        navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        responsive: true,
        afterAction: syncPosition,
        responsiveRefreshRate: 200,
        autoPlay: true

    });

    sync2.owlCarousel({
        items: 3,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3],
        itemsTablet: [768, 3],
        itemsMobile: [479, 1],
        itemsMobileSmall: [320, 1],
        pagination: false,
        responsiveRefreshRate: 100,
        afterInit: function(el) {
            el.find(".owl-item").eq(0).addClass("synced");
        }
    });

    function syncPosition(el) {
        var current = this.currentItem;
        $("#sync2")
            .find(".owl-item")
            .removeClass("synced")
            .eq(current)
            .addClass("synced")
        if ($("#sync2").data("owlCarousel") !== undefined) {
            center(current)
        }
    }

    $("#sync2").on("click", ".owl-item", function(e) {
        e.preventDefault();
        var number = $(this).data("owlItem");
        sync1.trigger("owl.goTo", number);
    });

    function center(number) {
        var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
        var num = number;
        var found = false;
        for (var i in sync2visible) {
            if (num === sync2visible[i]) {
                var found = true;
            }
        }

        if (found === false) {
            if (num > sync2visible[sync2visible.length - 1]) {
                sync2.trigger("owl.goTo", num - sync2visible.length + 2)
            } else {
                if (num - 1 === -1) {
                    num = 0;
                }
                sync2.trigger("owl.goTo", num);
            }
        } else if (num === sync2visible[sync2visible.length - 1]) {
            sync2.trigger("owl.goTo", sync2visible[1])
        } else if (num === sync2visible[0]) {
            sync2.trigger("owl.goTo", num - 1)
        }

    }
    //============================================
    // aside slider
    //============================================


    $("#comment-slider,#testimonial-slider").owlCarousel({

        navigation: true, // Show next and prev buttons
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true,
        pagination: false,
        autoPlay: true,
        navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']

    });
    //===============================================
    //animation
    //==============================================
    // Show element on scroll

    var $elems = $('.animate-in');
    var winheight = win.height();
    var fullheight = $(document).height();

    win.scroll(function() {
        animate_elems();
    });

    function animate_elems() {
        var wintop = win.scrollTop(); // calculate distance from top of window
        // loop through each item to check when it animates
        $elems.each(function() {
            var $elm = $(this);

            var topcoords = $elm.offset().top; // element's distance from top of page in pixels

            if (wintop > (topcoords - (winheight * .99999))) {
                // animate when top of the window is 3/4 above the element
                $elm.addClass('animated');

            }

        });
    } // end animate_elems()
    //============================================
    // Mobile sub menu
    //============================================
    if (win.width() <= 767) {
        $("#slide-nav #menu_nav ul > li.dropdown").append('<div class="more"></div>');

        $("#slide-nav #menu_nav").on("click", ".more", function(e) {
            e.stopPropagation();

            $(this).parent().toggleClass("current")
                .children("#slide-nav #menu_nav ul > li.dropdown > ul").toggleClass("open");

        });

    }

    win.resize(function() {
        if (window.innerWidth > 767) {
            if ($('#slide-nav #menu_nav ul > li.dropdown .more').length !== 0) {
                $('#slide-nav #menu_nav ul > li.dropdown div').remove('.more');
            }
        } else {
            $("#slide-nav #menu_nav ul > li.dropdown").append('<div class="more"></div>');
        }
    });

    var $body = $('body'),
        $wrapper = $('.body-innerwrapper'),
        $toggler = $('.navbar-toggle'),
        $close = $('.closs'),
        $offCanvas = $('.navbar-collapse');

    $toggler.on('click', function(event) {
        event.preventDefault();
        stopBubble(event);
        setTimeout(offCanvasShow, 50);
    });

    $close.on('click', function(event) {
        event.preventDefault();
        offCanvasClose();
    });

    var offCanvasShow = function() {
        $body.addClass('offcanvas');
        $wrapper.on('click', offCanvasClose);
        $close.on('click', offCanvasClose);
        $offCanvas.on('click', stopBubble);

    };

    var offCanvasClose = function() {
        $body.removeClass('offcanvas');
        $wrapper.off('click', offCanvasClose);
        $close.off('click', offCanvasClose);
        $offCanvas.off('click', stopBubble);
    };

    var stopBubble = function(e) {
        e.stopPropagation();
        return true;
    };



});

