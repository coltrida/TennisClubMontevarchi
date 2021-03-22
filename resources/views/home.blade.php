@extends('layouts.template')

@section('container')

    @guest
        @error('username')
        <div class="messaggio" id="messaggioErroreLogin" style="
                  position: fixed;
                  z-index: 1;
                  top: 5vw;
                  color: white;
                  left: 20vw;
                  text-align: center;
                  background-color: black;
                  width: 50%;
                  border: 3px solid green;
                  padding: 10px;">
            <div>
                <span >{{ $message }}</span>
            </div>
        </div>
        @enderror
        @error('email')
        <div class="messaggio" id="messaggioErroreEmail" style="
                  position: fixed;
                  z-index: 1;
                  top: 5vw;
                  color: white;
                  left: 20vw;
                  text-align: center;
                  background-color: black;
                  width: 50%;
                  border: 3px solid green;
                  padding: 10px;">
            <div>
                <span >{{ $message }}</span>
            </div>
        </div>
        @enderror
        @error('username')
        <div class="messaggio" id="messaggioErroreUsername" style="
                  position: fixed;
                  z-index: 1;
                  top: 5vw;
                  color: white;
                  left: 20vw;
                  text-align: center;
                  background-color: black;
                  width: 50%;
                  border: 3px solid green;
                  padding: 10px;">
            <div>
                <span >{{ $message }}</span>
            </div>
        </div>
        @enderror
        @if(session()->has('message'))
            <div class="messaggio" id="messaggioErroreUsername" style="
                  position: fixed;
                  z-index: 1;
                  top: 5vw;
                  color: white;
                  left: 20vw;
                  text-align: center;
                  background-color: black;
                  width: 50%;
                  border: 3px solid green;
                  padding: 10px;">
                    {{session()->get('message')}}
            </div>
        @endif
    <!-- Start Feature Slider -->
    <div class="rev_slider_wrapper">
        <div id="slider1" class="rev_slider rev-slider-standard"  data-version="5.0">
            <ul>
                <li data-fstransition="slidedown" data-fsmasterspeed="300" data-transition="fade">
                    <!-- MAIN IMAGE -->
                    <img src="{{asset('img/campo.jpg')}}" alt="slide" data-bgposition="center center" data-kenburns="on" data-duration="9000" data-ease="Power2.easeInOut" data-scalestart="110" data-scaleend="133" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                    <!-- LAYER NR. 1 -->
                    <h1 class="tp-caption"
                        data-x="left" data-hoffset="0"
                        data-y="top" data-voffset="90"
                        data-whitespace="nowrap"
                        data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                        data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                        data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                        data-color="#ffffff"
                        data-fontsize="44"
                        data-lineheight="46"
                        data-width="auto"
                        data-height="auto"
                        data-start="300">
                        {{--Our Blood, Our Sweat,--}}<br/>Rafael Nadal {{--<small class="feat-color">- CLUB MOTTO</small>--}}
                        {{--RAFAEL NADAL--}} {{--<small class="feat-color">- RAFAEL NADAL</small>--}}
                    </h1>

                    <!-- LAYER NR. 1 -->
                    <p class="tp-caption"
                       data-x="left" data-hoffset="0"
                       data-y="top" data-voffset="225"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                       data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                       data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                       data-color="#ffffff"
                       data-fontsize="17"
                       data-lineheight="22"
                       data-width="auto"
                       data-height="auto"
                       data-start="500">
                        Nel tennis ti trovi mille volte indietro, 5-4, 6-5, <br>
                        ma devi lottare, diventare ancor più aggressivo, non avere paura…
                    </p>

                    <!-- LAYER NR. 1 -->
                    {{--<div class="tp-caption"
                         data-x="left" data-hoffset="0"
                         data-y="top" data-voffset="335"
                         data-whitespace="normal"
                         data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                         data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                         data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                         data-start="700">
                        <a href="#" class="btn btn-success">Join Our Club</a>
                    </div>--}}

                    <!-- LAYER NR. 1 -->
                    {{--<div class="tp-caption"
                         data-x="left" data-hoffset="150"
                         data-y="top" data-voffset="335"
                         data-whitespace="normal"
                         data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                         data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                         data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                         data-start="700">
                        <a href="#" class="btn btn-warning">Read More</a>
                    </div>--}}
                </li><!--/. END SLIDE -->



                <li data-transition="fade">
                    <!-- MAIN IMAGE -->
                    <img src="{{asset('img/campo2.jpg')}}" alt="slide2" data-bgposition="center center" data-kenburns="on" data-duration="9000" data-ease="Power2.easeInOut" data-scalestart="110" data-scaleend="133" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="2" class="rev-slidebg" data-no-retina>
                    <!-- LAYER NR. 1 -->
                    <h1 class="tp-caption"
                        data-x="left" data-hoffset="0"
                        data-y="top" data-voffset="90"
                        data-whitespace="nowrap"
                        data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                        data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                        data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                        data-color="#ffffff"
                        data-fontsize="44"
                        data-lineheight="46"
                        data-width="auto"
                        data-height="auto"
                        data-start="300">
                        {{--Our Blood, Our Sweat,--}}<br/>Bjorn Borg {{--<small class="feat-color">- CLUB MOTTO</small>--}}
                    </h1>

                    <!-- LAYER NR. 1 -->
                    <p class="tp-caption"
                       data-x="left" data-hoffset="0"
                       data-y="top" data-voffset="225"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                       data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                       data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                       data-color="#ffffff"
                       data-fontsize="17"
                       data-lineheight="22"
                       data-width="auto"
                       data-height="auto"
                       data-start="500">
                        Se non hai paura di perdere, non meriti di vincere
                    </p>

                    <!-- LAYER NR. 1 -->
                    {{--<div class="tp-caption"
                         data-x="left" data-hoffset="0"
                         data-y="top" data-voffset="335"
                         data-whitespace="normal"
                         data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                         data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                         data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                         data-start="700">
                        <a href="#" class="btn btn-success">Join Our Club</a>
                    </div>--}}

                    <!-- LAYER NR. 1 -->
                    {{--<div class="tp-caption"
                         data-x="left" data-hoffset="150"
                         data-y="top" data-voffset="335"
                         data-whitespace="normal"
                         data-transform_idle="o:1;sX:1;sY:1;skX:0px;skY:0px;rX:0;rY:0;rZ:0;z:0;"
                         data-transform_in="x:250px;y:0px;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0px;skY:0px;opacity:0;s:300;e:Power2.easeInOut;"
                         data-transform_out="x:-250px;y:0px;rX:{0,0};rY:{0,0};sX:1;sY:1;opacity:0;s:300;e:Power3.easeInOut"
                         data-start="700">
                        <a href="#" class="btn btn-warning">Read More</a>
                    </div>--}}
                </li><!--/. END SLIDE -->

            </ul>
        </div><!-- END REVOLUTION SLIDER -->
    </div><!-- END OF SLIDER WRAPPER -->
    @else
        <section class="main-content">
            <div class="container body-content">
                <h1>Prenotazioni</h1>
                <div style="display: flex;">
                        <div style="display: flex">
                            <div><input class="form-control"
                                        style="border: 1px black solid"
                                        type="date"
                                        name="giorno"
                                        id="giorno"
                                ></div>
                            <div style="margin-left: 10px">
                                <a id="button" class="btn btn-primary">Visualizza</a>
                            </div>
                        </div>


                </div>

            </div>
        </section>
    @endguest

    <hr class="rule-fat"/>

    <!-- Start Main Content -->
    <section class="main-content">
        <div class="container body-content">

            <!-- Start Widget Section -->
            <section class="row page-section">
                <div class="col-sm-6">
                    <h3>Benvenuto nel nostro Circolo</h3>
                    <p class="lead">Il più antico e prestigioso Circolo Sportivo per il Tennis della provincia di Arezzo</p>
                    <p style="text-align: justify">
                        L'attuale Tennis Club Montevarchi vanta antiche tradizioni sportive.
                        Sono passati più di 80 anni da quando per la prima volta nella provincia di Arezzo, due giocatori racchette in pugno, rigorosamente vestiti di bianco con pantaloni lunghi e camicia, si sfidarono su un campo di terra rossa per disputare un incontro di Tennis.
                        L'avvenimento ebbe luogo a Montevarchi nello spazio dell'attuale Piazza della Repubblica dove nel 1928 fu costruito il primo campo da tennis adiacente al campo sportivo, intitolato al campione del mondo di automobilismo, Conte Gastone Brilli Peri.
                    </p>
                    <p class="feat-color"><strong>Nardi</strong> <em>- Presidente del Circolo</em></p>
                </div>

                <div class="col-sm-3">
                    <div class="widget widget-single-post">
                        <h3>Featured News</h3>
                        <a href="post-standard.html">
                            <div class="hover-box-container">
                                <div class="hover-box">
                                    <em class="date">17 March</em>
                                    <img src="{{asset('img/fill-3.jpg')}}"  alt="Fill" />
                                </div>
                            </div>
                            <h4>Nominated club of the year</h4>
                            <p>Nullam id dolor id nibh ultr cies vehicula ut id elit natoque putid…</p>

                        </a>
                    </div>
                </div>

                <div class="col-sm-3">
                    <!-- Start Widget -->
                    <div class="widget widget-post-thumbs">
                        <h3>Coming Events</h3>
                        <ul class="list-post-thumbs">
                            <li>
                                <a href="event.html">
                                    <img src="{{asset('img/thumb-3.jpg')}}" alt="fill" />
                                    <div>
                                        <p><strong>Sydney VS Our Team</strong></p>
                                        <p>Nullam id dolor id niutid elit…<br/>
                                            <small class="meta-text">17 March</small></p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="event.html">
                                    <img src="{{asset('img/thumb-1.jpg')}}" alt="fill" />
                                    <div>
                                        <p><strong>Semi Finals - Us Vs Tigers</strong></p>
                                        <p>Nullam id dolor id niutid elit…<br/>
                                            <small class="meta-text">17 March</small></p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="event.html">
                                    <img src="{{asset('img/thumb-2.jpg')}}" alt="fill" />
                                    <div>
                                        <p><strong>Club Presentations</strong></p>
                                        <p>Nullam id dolor id niutid elit…<br/>
                                            <small class="meta-text">17 March</small></p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>

        </div><!-- /.container -->
    </section><!-- /.main-content -->


    <hr class="rule-fat"/>
    <!-- Start Parallax Container -->
    <section class="container full-width parallax-background" style="background-image: url(img/pallina.jpg); min-height: 330px;" data-stellar-background-ratio="0.75">
        <div class="parallax-element vert-middle container">
            <div class="quotes-carousel">
                <div class="item">
                    <br/>
                    <blockquote class="col-xs-9 text-center scale-125 float-none">
                        “Niente panchina, niente bordo campo, nessun angolo neutrale. Ci sei solo tu, nudo!”
                        <footer>
                            <cite class="feat-color" title="Emil Zatopek">Andre Agassi -
                                <small class="feat-color">
                                    <em class="fa fa-star"></em><em class="fa fa-star"></em><em class="fa fa-star"></em>
                                </small>
                            </cite>
                        </footer>
                    </blockquote>
                </div>
                <div class="item">
                    <br/>
                    <blockquote class="col-xs-9 text-center scale-125 float-none">
                        “La differenza fra me e Guy Forget? Lui faceva ace sul 15-0 , io sul 30-40”
                        <footer>
                            <cite class="feat-color" title="Rick Hooley">Boris Becker -
                                <small class="feat-color">
                                    <em class="fa fa-star"></em><em class="fa fa-star"></em><em class="fa fa-star"></em><em class="fa fa-star"></em><em class="fa fa-star"></em>
                                </small>
                            </cite>
                        </footer>
                    </blockquote>
                </div>
            </div>
        </div>
    </section>
    <hr class="rule-fat"/>


    <!-- Start Main Content -->
    <section class="main-content">
        <div class="container body-content">

            <!-- Start Widget Section -->
            <section class="page-section">
                <div class="clearfix pull-container h3">
                    <h3 class="pull-left">Foto</h3>
                    <!-- Isotope Filters -->
                    {{--<ul class="list-filter list-inline filter-button-group pull-right">
                        <li><a class="btn active" data-filter="">All</a></li>
                        <li><a class="btn" data-filter=".ftr-1">1st Half</a></li>
                        <li><a class="btn" data-filter=".ftr-2">2nd Half</a></li>
                    </ul>--}}
                </div>

                <div class="grid grid-col-5">
                    <div class="grid-sizer"></div>
                    <div class="gutter-sizer"></div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-1 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-4.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-4.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-2 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-2.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-2.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-1 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-1.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-1.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-1 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-3.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-3.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-1 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-5.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-5.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-2 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-6.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-6.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-7.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-7.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-2 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-8.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-8.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-1 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-9.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-9.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>

                    <!-- Gallery Item -->
                    <div class="grid-item ftr-2 hover-box-container hb-effect-fade">
                        <a href="{{asset('img/fill-10.jpg')}}" class="fancybox hover-box" data-fancybox-group="gallery1" title="Insert Your Titles">
                            <img src="{{asset('img/fill-10.jpg')}}" alt="alt" />
                            <div class="hover-box-content-container">
                                <div class="hover-box-content">
                                    <em class="fa fa-search"></em>
                                </div>
                            </div>
                            {{--<div class="caption-text">Insert your caption</div>--}}
                        </a>
                    </div>


                </div><!-- /.grid -->

                <br/>
            </section>

        </div><!-- /.container -->
    </section><!-- /.main-content -->
@endsection

@section('footer')
    @parent
    <script>
        $('document').ready(function () {

            let today = new Date();
            let dd = String(today.getDate()).padStart(2, '0');
            let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
            let yyyy = today.getFullYear();

            today = yyyy + '-' + mm + '-' + dd;
            $('#giorno').val(today);

            let url = '{{route('prenotazioni2', [":today", 'Campo1'])}}';
            url = url.replace(':today', today);
            $('#button').attr("href", url);

            $('#giorno').on('change', function (ele) {
                let nuovoGiorno = ele.target.value;
                url = '{{route('prenotazioni2', [":nuovoGiorno", 'Campo1'])}}';
                url = url.replace(':nuovoGiorno', nuovoGiorno);
                $('#button').attr("href", url);
            })
        });
    </script>
@endsection
