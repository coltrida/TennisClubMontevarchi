
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Design Lots">
    <link rel="icon" href="{{asset('favicon.ico')}}">

    <title>TC Montevarchi</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/bootstrap.min.css')}}">
    <!-- Remember to include jQuery :) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

    <!-- Menu Stylesheets -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/menuzord.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/menuzord-animations.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/menuzord-border-top.css')}}">

    <!-- RS5.0 Stylesheets -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/settings.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/layers.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/navigation.css')}}">

    <!-- Forms -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/sky-forms.css')}}">

    <!-- Style Sheets -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/ie10-viewport-bug-workaround.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/font-awesome.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/iconmoon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/owl.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/jquery.fancybox.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/anicollection.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/tooltipster.bundle.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/slidebars.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/library.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/responsive.css')}}">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/styles.css')}}">
    <!-- Place RTL Style Sheet here -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

    <!--[if lt IE 9]>
    <script src="./library/bs/js/html5shiv.min.js"></script>
    <script src="./library/bs/js/respond.min.js"></script>-->
    <![endif]-->
</head>

<body class="">

<!-- Start Full Screen Overlay -->
<div class="canvas-overlay">
    <!-- Close Button -->
    <a class="overlay-btn btn-closer" href="#"></a>
    <!-- Content Container -->
    <div class="container" data-anijs="if: scroll, on:window, do: fadeInDown animated, before: scrollReveal, after: $fireOnce removeAnim ">
        <h2>Registrazione</h2>
        <form class="search-hero">
            <label class="input">
                <input type="text" name="nome" class="form-control" placeholder="Nome">
            </label>
            <label class="input">
                <input type="text" name="anno" class="form-control" placeholder="Anno di nascita">
            </label>
            <button class="btn btn-success" type="button">Iscrizione</button>
        </form>

    </div>
</div>
<!-- End Full Screen Overlay -->


<!-- Start Header -->
<header id="header">

    <!-- Start Pre Header -->
    <nav class="pre-header">
        <div class="container">
            <div class="head-left">
                <ul class="social-links sl-circle">
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
                    <li><a href="#"><i class="fa fa-globe"></i></a></li>
                </ul>
            </div>

            <div class="head-right">
                @guest
                    <strong>Next Game:</strong> <div id="clock"></div>
                @else
                    @include('partials.infoCreditoPrivilegi')
                @endguest
            </div>
        </div>
    </nav>
    <!-- End Pre Header -->



    <!-- Start Main Header -->
    <nav class="main-header header-reveal">
        <div class="container">
            <!-- Start Menu -->
            <div id="menuzord" class="menuzord">
                <div class="head-left">
                    <a href="{{route('index')}}" class="menuzord-brand">
                        <!-- Sport <div class="tag-line">Sporting Club Theme</div> -->
                        <img class="logo-img" src="{{asset('img/logo.png')}}" alt="Logo" />
                    </a>
                </div>

                <ul class="menuzord-menu head-right">

                    <li><a href="layout-grid.html">Informazioni</a>
                        <ul class="dropdown">
                            <li><a href="layout-grid.html">Regolamento</a></li>
                            <li><a href="layout-side-left.html">Listino Prezzi</a></li>
                            <li><a href="post-standard.html">Organigramma</a></li>
                        </ul>
                    </li>
                    @guest
                    <li><a href="#">Login</a>
                        <div class="megamenu">
                            <!-- Start Row -->
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Login</h4>
                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                        <div class="form-group">
                                            <label class="sr-only" >Email address</label>
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email">
                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" >Password</label>
                                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                 </span>
                                            @enderror
                                        </div>
                                        <button type="submit" class="btn btn-default">Login</button>
                                    </form>
                                </div>
                            </div><!--/.row -->
                        </div>
                    </li>

                    <li class="overlay-tigger">
                        <a class="overlay-btn btn-open" href="#"><em class="fa fa-user"></em></a>
                    </li>
                    @else
                        <li>
                            <a id="navbarDropdown" class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <ul class="dropdown">
                                @if(Auth::user()->isAdmin)
                                    <li><a href="{{route('prenotazioniParticolari')}}">Prenotazioni Particolari</a></li>
                                    <li><a href="{{route('eliminazioniParticolari')}}">Eliminazioni Particolari</a></li>
                                    <li><a href="index-3.html">Lista Soci</a></li>
                                @else
                                    <li><a href="{{route('listaEliminabili')}}">Elimina ora</a></li>
                                @endif
                                <li><a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form></li>
                            </ul>

                        </li>
                    @endguest
                </ul>
            </div><!--/.menuzord -->
        </div>
    </nav>
    <!-- End Main Header -->


    <!-- Start Post Header -->
    <nav class="post-header">
        <div class="container">
            <div class="head-left">
                <ul class="mini-nav">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="layout-grid.html">Blog</a>
                        <ul class="mini-sub-menu">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="layout-grid.html">Blog</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>

            <div class="head-right">
                <em class="fa fa-phone-square feat-color"></em> 055 978 9366
            </div>
        </div>
    </nav>
    <!-- End Post Header -->


</header>
<!-- End Header -->

@yield('container')



<hr class="rule-fat"/>

<!--Start Footer -->
<div id="footer">

    <!-- Start Footer -->
    <footer class="main-footer">
        <div class="container">
            <!-- Start Row -->
            <div class="row">
                <div class="col-md-3">
                    <div class="widget widget-contact">
                        <h3>Contattaci</h3>
                        <ul class="list-styled list-bordered">
                            <li><strong>Telefono:</strong><br/>055 978 9366</li>
                            <li><strong>Facs:</strong><br/>055 978 9366</li>
                            <li><a href="#">info@tcmontevarchi.it</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-paired-list">
                        <h3>Orario</h3>
                        <ul class="list-paired">
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Lunedì <span>9am - 10pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Martedì <span>9am - 9pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Mercoledì <span>7am - 9pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Giovedì <span>9am - 1pm</span></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-paired-list">
                        <h3>&nbsp;</h3>
                        <ul class="list-paired">
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Vernerdì <span>9am - 10pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Sabato <span>9am - 9pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Domenica <span>7am - 9pm</span></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-brand-address">
                        <h3><img class="logo-img" src="{{asset('img/logo.png')}}" alt="Logo" /></h3>
                        <ul class="list-styled list-bordered">
                            <li><strong>Indirizzo:</strong><br/>Via Maestri del Lavoro, 3 - 52025 Montevarchi AR </li>
                            <li><a target="_blank" href="https://goo.gl/maps/CsLpwzcf2A9N1aWX9">Vedi sulla mappa</a></li>
                        </ul>
                    </div>
                </div>
            </div><!--/.row -->
        </div>
    </footer>



    <!-- Start Post Footer -->
    <footer class="post-footer">
        <div class="container">
            <div class="foot-left">
                <div>&copy; ColtriCat <span class="copy-year"></span>. All rights reserved.</div>
            </div>

        </div>
    </footer>
</div><!--/footer -->


@section('footer')
<!-- JavaScript
   ================================================== -->
<script src="{{asset('js/jquery.min.js')}}"></script>
<script>window.jQuery || document.write('<script src="{{asset('js/jquery.min.js')}}"><\/script>')</script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="{{asset('js/ie10-viewport-bug-workaround.js')}}"></script>

<script type="text/javascript" src="{{asset('js/isotope.pkgd.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/imagesloaded.pkgd.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/owl.carousel.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/cleantabs.jquery.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.fancybox.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.scrollUp.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/valign.js')}}"></script>
<script type="text/javascript" src="{{asset('js/anijs-min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/anijs-helper-scrollreveal.js')}}"></script>
<script type="text/javascript" src="{{asset('js/anijs-helper-dom.js')}}"></script>
<script type="text/javascript" src="{{asset('js/menuzord.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.stickit.js')}}"></script>
<script type="text/javascript" src="{{asset('js/scrollIt.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.countdown.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/tooltipster.bundle.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/footer-reveal.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/headhesive.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.stellar.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.countTo.js')}}"></script>
<script type="text/javascript" src="{{asset('js/typed.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.waypoints.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/slidebars.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/tendina.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.sidr.js')}}"></script>
<script type="text/javascript" src="{{asset('js/pace.js')}}"></script>
<script type="text/javascript" src="{{asset('js/list.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.fitvids.js')}}"></script>

<!-- Forms JS Files -->
<script type="text/javascript" src="{{asset('js/jquery-ui.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.form.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.validate.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.maskedinput.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.modal.js')}}"></script>

<!-- RS5.0 Core JS Files -->
<script type="text/javascript" src="{{asset('js/jquery.themepunch.tools.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.themepunch.revolution.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/revolution.extension.slideanims.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/revolution.extension.layeranimation.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/revolution.extension.navigation.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/revolution.extension.kenburn.min.js')}}"></script>

<!-- Scripts Go -->
<script src="{{asset('js/validate-contact.js')}}"></script>
<script src="{{asset('js/scripts.js')}}"></script>

@show
</body>
</html>
