<!DOCTYPE html>
<html lang="{{ config('app.locale') }}" dir="{{ __('voyager::generic.is_rtl') == 'true' ? 'rtl' : 'ltr' }}">
<head>
    <meta charset="UTF-8" />
    <title>@yield('page_title', setting('admin.title') . " - " . setting('admin.description'))</title>
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1"> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <meta name="assets-path" content="{{ route('voyager.voyager_assets') }}"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <!-- Google Fonts -->
    {{-- <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Quickswand:wght@900&display=swap" > --}}
    
    <!-- Favicon -->
    <?php $admin_favicon = Voyager::setting('admin.icon_image', ''); ?>
    @if($admin_favicon == '')
    <link rel="shortcut icon" href="{{ voyager_asset('images/logo-icon.png') }}" type="image/png">
    @else
    <link rel="shortcut icon" href="{{ Voyager::image($admin_favicon) }}" type="image/png">
    @endif
    
    <!-- App CSS -->
    <link rel="stylesheet" href="{{ voyager_asset('css/app.css') }}"/>
    <link href="{{ asset('public/css/prtip.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/daterangepicker.css') }}" rel="stylesheet">
    <link href="{{ asset('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/css/c3.css') }}" rel="stylesheet">
    {{-- <link rel="stylesheet" href="{{ asset('public/css/fv.css') }}"/> --}}
    {{-- <link href="https://code.jquery.com/ui/1.10.1/themes/smoothness/jquery-ui.css"/> --}}
    @yield('css')
    @if(__('voyager::generic.is_rtl') == 'true')
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-rtl/3.4.0/css/bootstrap-rtl.css">
        <link rel="stylesheet" href="{{ voyager_asset('css/rtl.css') }}">
    @endif

    <!-- Few Dynamic Styles -->
    <style type="text/css">
    td.details-control {
        background: url('https://www.datatables.net/examples/resources/details_open.png') no-repeat center center;
        cursor: pointer;
    }
    tr.shown td.details-control {
        background: url('https://www.datatables.net/examples/resources/details_close.png') no-repeat center center;
    }

     body {
            font-family: "Quicksand";
        }
        .voyager .side-menu .navbar-header {
            background:{{ config('voyager.primary_color','#22A7F0') }};
            border-color:{{ config('voyager.primary_color','#22A7F0') }};
        }
        .widget .btn-primary{w
            border-color:{{ config('voyager.primary_color','#22A7F0') }};
        }
        .widget .btn-primary:focus, .widget .btn-primary:hover, .widget .btn-primary:active, .widget .btn-primary.active, .widget .btn-primary:active:focus{
            background:{{ config('voyager.primary_color','#22A7F0') }};
        }
        .voyager .breadcrumb a{
            color:{{ config('voyager.primary_color','#22A7F0') }};
        }

        .ui-autocomplete-loadings {

            background:  url('http://www.hsi.com.hk/HSI-Net/pages/images/en/share/ajax-loader.gif')
            no-repeat
            right center;

        }
    </style>

    @if(!empty(config('voyager.additional_css')))<!-- Additional CSS -->
        @foreach(config('voyager.additional_css') as $css)<link rel="stylesheet" type="text/css" href="{{ asset($css) }}">@endforeach
    @endif

    @yield('head')
</head>

<body class="voyager @if(isset($dataType) && isset($dataType->slug)){{ $dataType->slug }}@endif">

<div id="voyager-loader">
    <?php $admin_loader_img = Voyager::setting('admin.loader', ''); ?>
    @if($admin_loader_img == '')
        <img src="{{ voyager_asset('images/logo-icon.png') }}" alt="Voyager Loader">
    @else
        <img src="{{ Voyager::image($admin_loader_img) }}" alt="Voyager Loader">
    @endif
</div>

<?php
if (\Illuminate\Support\Str::startsWith(Auth::user()->avatar, 'http://') || \Illuminate\Support\Str::startsWith(Auth::user()->avatar, 'https://')) {
    $user_avatar = Auth::user()->avatar;
} else {
    $user_avatar = Voyager::image(Auth::user()->avatar);
}
?>

<div class="app-container">
    <div class="fadetoblack visible-xs"></div>
    <div class="row content-container">
        @include('voyager::dashboard.navbar')
        @include('voyager::dashboard.sidebar')
        <script>
            (function(){
                    var appContainer = document.querySelector('.app-container'),
                        sidebar = appContainer.querySelector('.side-menu'),
                        navbar = appContainer.querySelector('nav.navbar.navbar-top'),
                        loader = document.getElementById('voyager-loader'),
                        hamburgerMenu = document.querySelector('.hamburger'),
                        sidebarTransition = sidebar.style.transition,
                        navbarTransition = navbar.style.transition,
                        containerTransition = appContainer.style.transition;

                    sidebar.style.WebkitTransition = sidebar.style.MozTransition = sidebar.style.transition =
                    appContainer.style.WebkitTransition = appContainer.style.MozTransition = appContainer.style.transition =
                    navbar.style.WebkitTransition = navbar.style.MozTransition = navbar.style.transition = 'none';

                    if (window.innerWidth > 768 && window.localStorage && window.localStorage['voyager.stickySidebar'] == 'true') {
                        appContainer.className += ' expanded no-animation';
                        loader.style.left = (sidebar.clientWidth/2)+'px';
                        hamburgerMenu.className += ' is-active no-animation';
                    }

                   navbar.style.WebkitTransition = navbar.style.MozTransition = navbar.style.transition = navbarTransition;
                   sidebar.style.WebkitTransition = sidebar.style.MozTransition = sidebar.style.transition = sidebarTransition;
                   appContainer.style.WebkitTransition = appContainer.style.MozTransition = appContainer.style.transition = containerTransition;
            })();
        </script>
        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body padding-top">
                @yield('page_header')
                <div id="voyager-notifications"></div>
                @yield('content')
            </div>
        </div>
    </div>
</div>
@include('voyager::partials.app-footer')

<!-- Javascript Libs -->
<script type="text/javascript" src="{{ voyager_asset('js/app.js') }}"></script>
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/app.js') }}"></script>
{{-- <script src="{{ ('http://192.168.88.113/kalkulasimesin2/public/js/app.js') }}"></script> --}}
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/d3.v5.js') }}"></script>
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/moment-locales.min.js') }}"></script>
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/c3.min.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
<script type="text/javascript" src="{{ asset('public/js/protip.min.js') }}"></script>
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/jquery.countdown.js') }}"></script>
<script src="{{ ('https://vpn.krisanthium.com:7070/kalkulasimesin2/public/js/jquery.countdown.min.js') }}"></script>
{{-- <script src="https://code.jquery.com/ui/1.10.1/jquery-ui.js"></script> --}}
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script>
    
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-67259587-1', 'auto');
    ga('send', 'pageview');

$(document).ready(function(){
    $.protip();
});

document.addEventListener("keydown", function(event) {
      if (event.altKey && event.code === "KeyX") {
        let link = '{!! route("tr.total.kalkulasi")  !!}';
        let redirect = link;
            setTimeout(function(){ 
                    window.location.href = redirect;
        }, 1000);
        event.preventDefault();
      }
    });

    @if(Session::has('alerts'))
        let alerts = {!! json_encode(Session::get('alerts')) !!};
        helpers.displayAlerts(alerts, toastr);
    @endif

    @if(Session::has('message'))

    // TODO: change Controllers to use AlertsMessages trait... then remove this
    var alertType = {!! json_encode(Session::get('alert-type', 'info')) !!};
    var alertMessage = {!! json_encode(Session::get('message')) !!};
    var alerter = toastr[alertType];

    if (alerter) {
        alerter(alertMessage);
    } else {
        toastr.error("toastr alert-type " + alertType + " is unknown");
    }
    @endif

    // https://c3js.org/gettingstarted.html#setup
    
    var chart = c3.generate({
    bindto: '#chart',
    data: {
        columns: [
            ['2018', 30, 200, 2342, 400, 150, 2345, 234, 234],
            ['2019', 41, 2313, 234, 1231, 423, 234, 4123, 234],
            ['2020', 512, 4123, 234, 234, 234, 2342, 234, 2342],
        ]
    },
    grid: {
        x: {
            show: true
        },
        y: {
            show: true
        }
    }
});


// documentation http://hilios.github.io/jQuery.countdown/documentation.html
// http://hilios.github.io/jQuery.countdown/examples/advanced-coupon-site.html

$('#clock').countdown('2021/07/06 00:00:00')
  .on('update.countdown', function(event) {
    var format = '%H:%M:%S';
    // if(event.offset.totalDays > 0) {
    //   format = '%-d day%!d ' + format;
    // }
    // if(event.offset.weeks > 0) {
    //   format = '%-w week%!w ' + format;
    // }
    var $this = $(this).html(event.strftime(''
    + '<span>%-w</span> Minggu '
    + '<span>%-d</span> Hari '
    + '<span>%H</span> Jam '
    + '<span>%M</span> Menit '
    + '<span>%S</span> Detik'));

    // $(this).html(event.strftime(format));
  })
  .on('finish.countdown', function(event) {
    $(this).html('This offer has expired!')
      .parent().addClass('disabled');
      function disableF5(e) { if ((e.which || e.keyCode) == 116 || (e.which || e.keyCode) == 82) e.preventDefault(); };
      $(document).on("keydown", disableF5);
          // jika waktu sudah expired, maka tampilkan sistem untuk memproses penutupan transaksi periode tahunan.
           Swal.fire({
                title: 'Pemberitahuan sistem KOP',
                allowOutsideClick: false,
                text: 'sistem akan melakukan penutupan transaksi otomatis dalam penutupan periode tahunan, transaksi sebelumnya akan dikunci. dan akan mengenerate transaksi berikutnya.',
                // showDenyButton: true,
                // showCancelButton: true,
                confirmButtonText: `Baik, tutup transaksi periode tahun ini`,
                cancelButtonText: `Pendingkan`,
                denyButtonText: `batalkan`,
              }).then((result) => {
                            if (result.isConfirmed) {

                        alert("ne")
                        } else if (result.isDenied) {
                          alert("no")
                  }
            });
      });
    
</script>
@include('voyager::media.manager')
@yield('javascript')
@stack('javascript')
@if(!empty(config('voyager.additional_js')))<!-- Additional Javascript -->
    @foreach(config('voyager.additional_js') as $js)<script type="text/javascript" src="{{ asset($js) }}"></script>@endforeach
@endif

</body>
</html>
