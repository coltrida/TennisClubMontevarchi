
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Design Lots">
    <link rel="icon" href="{{asset('favicon.ico')}}">

    <title>Ultimate Sport</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/bootstrap.min.css')}}">

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
                <strong>Next Game:</strong> <div id="clock"></div>
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
                    <li class="active"><a href="index.html">Home Pages</a>
                        <ul class="dropdown">
                            <li><a href="index.html">Home 1</a></li>
                            <li><a href="index-2.html">Home 2</a></li>
                            <li><a href="index-3.html">Home 3</a></li>
                            <li><a href="index-4.html">Home 4</a></li>
                        </ul>
                    </li>

                    <li><a href="layout-grid.html">Blog Layouts</a>
                        <ul class="dropdown">
                            <li><a href="layout-grid.html">Grid Layouts</a>
                                <ul class="dropdown dropdown-left">
                                    <li><a href="layout-grid-2.html">Grid 2 Column</a></li>
                                    <li><a href="layout-grid-3.html">Grid 3 Column</a></li>
                                    <li><a href="layout-grid-4.html">Grid 4 Column</a></li>
                                    <li><a href="layout-bricks.html">Grid Bricks</a></li>
                                </ul>
                            </li>
                            <li><a href="layout-side-left.html">Sidebar Layouts</a>
                                <ul class="dropdown dropdown-left">
                                    <li><a href="layout-side-left.html">Sidebar left</a></li>
                                    <li><a href="layout-side-right.html">Sidebar Right</a></li>
                                    <li><a href="layout-side-left-right.html">Sidebar Left &amp; Right</a></li>
                                    <li><a href="layout-side-mini-main.html">Sidebar Mini &amp; Main</a></li>
                                </ul>
                            </li>
                            <li><a href="post-standard.html">Post Layouts</a>
                                <ul class="dropdown dropdown-left">
                                    <li><a href="post-standard.html">Post Standard</a></li>
                                    <li><a href="post-video.html">Post Video</a></li>
                                    <li><a href="post-gallery.html">Post Gallery</a></li>
                                    <li><a href="post-review.html">Post Review</a></li>
                                    <li><a href="post-feature.html">Post Big Feature</a></li>
                                    <li><a href="post-feature-parallax.html">Post Parallax Feature</a></li>
                                    <li><a href="post-narrow.html">Post Narrow</a></li>
                                </ul>
                            </li>
                            <li><a href="archive-list.html">Archive List</a></li>
                            <li><a href="archive-standard.html">Archive Standard</a></li>
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
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
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
                <em class="fa fa-phone-square feat-color"></em> 1432 543 654
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
                        <h3>Contact Us</h3>
                        <ul class="list-styled list-bordered">
                            <li><strong>Telephone Enquiry:</strong><br/>+61 555 555 1234</li>
                            <li><strong>Facsimile:</strong><br/>+61 555 555 1234</li>
                            <li><a href="#">info@sports.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-text">
                        <h3>Our Mission</h3>
                        <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-paired-list">
                        <h3>Club House</h3>
                        <ul class="list-paired">
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Monday <span>9am - 10pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Tue-Fri <span>9am - 9pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Sat-Sun <span>7am - 9pm</span></li>
                            <li><em class="fa fa-clock-o scale-80 feat-color"></em> Holidays <span>9am - 1pm</span></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="widget widget-brand-address">
                        <h3><img class="logo-img" src="{{asset('img/logo.png')}}" alt="Logo" /></h3>
                        <ul class="list-styled list-bordered">
                            <li><strong>Address:</strong><br/>310 Ashfield Ave, Suburbia, Brisbane, Australia, 4000 </li>
                            <li><a href="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d28369.415587766056!2d152.98820641500242!3d-27.276331333808365!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b93fb9c9442c901%3A0x10b5aa2f23d9e4e1!2sAshford+Circuit%2C+Petrie+QLD+4502!5e0!3m2!1sen!2sau!4v1406620130126" class="fancybox fancybox.iframe">View on map</a></li>
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
                <div>&copy; DesignLots <span class="copy-year"></span>. All rights reserved.</div>
            </div>

            <div class="foot-right">
                <ul class="social-links">
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-globe"></i></a></li>
                </ul>
            </div>
        </div>
    </footer>
</div><!--/footer -->



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
<!--[if lt IE 10]>
 <script type="text/javascript" src="./library/js/skyforms/js/jquery.placeholder.min.js"></script>
[endif]
[if lt IE 9]>
<script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
[endif] -->

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
</body>
</html>
