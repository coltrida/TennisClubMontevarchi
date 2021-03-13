@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">

            @include('prenotazioni.partials.singolodoppio')
            @include('prenotazioni.partials.header')

            @for($i = 9; $i < 23; $i++)
                <div class="alert"
                     style="border: black 1px solid; box-shadow: 2px 2px #888888; background-image: url(/img/bg3.jpg)">
                    <div class="row">
                        <div class="alert alert-success col-sm-6 col-md-2"
                             style="padding: 5px; color: black; margin: 0 10px; width: 120px; border: black 1px solid; box-shadow: 2px 2px #888888;"
                        >
                            @if($campo == 'Campo1' || $campo == 'Campo2')
                                <span style="font-size: 20px">{{$i}}:00 - {{$i+1}}:00</span>
                            @else
                                <span style="font-size: 20px">{{$i}}:30 - {{$i+1}}:30</span>
                            @endif


                        </div>

                        @if(isset($bookings[$i]) && isset($bookings[$i]->users[0]))
                            <div
                               class="alert  col-sm-6 col-md-2"
                               style="background-color: white; color: black; padding: 7px 0 5px 28px; margin: 0 5px 0 40px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                            {{$bookings[$i]->users[0]->name}}
                            </div>
                        @else
                            <a rel="modal:open" href="#ex1" data-oraraio="{{$i}}"
                               class="btn btn-success col-sm-6 col-md-2"
                               style="margin: 0 5px 0 40px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                            </a>
                        @endif

                        @if(isset($bookings[$i]) && isset($bookings[$i]->users[1]))
                            <div
                                class="alert col-sm-6 col-md-2"
                                style="background-color: white; color: black; padding: 7px 0 5px 28px; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                                {{$bookings[$i]->users[1]->name}}
                            </div>
                        @else
                            <a rel="modal:open" href="#ex1" data-oraraio="{{$i}}"
                               class="btn btn-success col-sm-6 col-md-2"
                               style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                            </a>
                        @endif

                        @if(isset($bookings[$i]) && isset($bookings[$i]->users[2]))
                            <div
                                class="alert col-sm-6 col-md-2"
                               style="background-color: white; color: black; padding: 7px 0 5px 28px; margin: 0 5px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                                {{$bookings[$i]->users[2]->name}}
                            </div>
                        @else
                            @if(isset($bookings[$i]) && $bookings[$i]->tipo == 'Singolare')
                                <div
                                   class="col-sm-6 col-md-2"
                                   style="opacity: 0; color: black; margin: 0 5px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                                >
                                </div>
                            @else
                                <a rel="modal:open" href="#ex1" data-oraraio="{{$i}}"
                                   class="btn btn-success col-sm-6 col-md-2"
                                   style="color: black; margin: 0 5px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                                >
                                </a>
                            @endif
                        @endif

                        @if(isset($bookings[$i]) && isset($bookings[$i]->users[3]))
                            <div
                                class="alert col-sm-6 col-md-2"
                                style="background-color: white; color: black; margin: 0; padding: 7px 0 5px 28px; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                            >
                                {{$bookings[$i]->users[3]->name}}
                            </div>
                        @else
                            @if(isset($bookings[$i]) && $bookings[$i]->tipo == 'Singolare')
                                <div
                                   class="col-sm-6 col-md-2"
                                   style="opacity: 0; color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                                >
                                </div>
                            @else
                                <a rel="modal:open" href="#ex1" data-oraraio="{{$i}}"
                                   class="btn btn-success col-sm-6 col-md-2"
                                   style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px rgba(43,43,43,0.93);"
                                >

                                </a>
                            @endif
                        @endif

                        @if(isset($bookings[$i]))
                        <div id="esiste{{$i}}"
                            class="alert alert-warning col-sm-6 col-md-1"
                            style="background-color: greenyellow; padding: 8px 8px 8px 12px; color: black; margin: 0 0 0 40px; border: black 1px solid; box-shadow: 2px 2px #888888;"
                        >
                            {{$bookings[$i]->tipo}}
                        </div>
                        @else
                            <div id="esiste{{$i}}"></div>
                        @endif
                    </div>

                </div>
            @endfor
        </div>
    </section>
@endsection

@section('footer')
    @parent
    <script>
        $('document').ready(function () {

            $('div.messaggio').fadeOut(5000);

            $('.btn-success').on("click", function () {
                let orario = $(this).data('oraraio');
                $("#orariosel").html( orario );
                let id = 'esiste'+orario;
                let esiste = $("#"+id).html().trim();
                if(esiste == 'Singolare'){
                    $("#btnDoppio").css('display', 'none');
                    $("#btnSingolare").css('display', 'block');
                } else if(esiste == 'Doppio'){
                    $("#btnSingolare").css('display', 'none');
                    $("#btnDoppio").css('display', 'block');
                } else {
                    $("#btnDoppio").css('display', 'block');
                    $("#btnSingolare").css('display', 'block');
                }
            });

            $('.esegui').on("click", function () {
                let orario = $("#orariosel").html();
                let tipo = $(this).data('tipo');
                let url = "{{route('prenota', ['giorno'=>$giorno, 'ora'=>":orario", 'campo' => $campo, 'tipo' => ':tipo'])}}";
                url = url.replace(':orario', orario);
                url = url.replace(':tipo', tipo);
                $(this).attr('href', url)
            });
        });
    </script>
@endsection
