@extends('layouts.template-visualizza')

@section('container')
@include('prenotazioni.partials.singolodoppio2')
@include('prenotazioni.partials.messaggio2')
    <main>

        <section class=" text-center">
            <div class="row ">
                <div class="col-lg-8 col-md-8 mx-auto">
                    <div style="display: flex; justify-content: space-around; align-items: center">
                        <div><h2 class="fw-light card-body shadow">{{$campo}}</h2></div>
                        <div class="mx-2" style="display: flex; justify-content: space-between; align-items: center">
                            <div>
                                <a href="{{route('prenotazioni2', ['giorno' => $ieri, 'campo' => $campo])}}">
                                    <h2><i class="fas fa-arrow-circle-left"></i></h2>
                                </a>
                            </div>
                            <div style="margin: 0 10px"><h3 class="fw-light">{{ Carbon\Carbon::make($giorno)->format('d/m/Y') }}</h3></div>
                            <div>
                                <a href="{{route('prenotazioni2', ['giorno' => $domani, 'campo' => $campo])}}">
                                    <h2><i class="fas fa-arrow-circle-right"></i></h2>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row row-cols-2 row-cols-md-6 gx-1" style="display: flex;  align-items: center" >
                        <div class="col">
                            <a href="{{route('index')}}"
                               class="btn btn-success shadow">Home</a>
                        </div>

                        @for($j = 0; $j < count(config('enum.campi')); $j++)
                            <div class="col">
                                <a href="{{route('prenotazioni2', ['giorno' => $giorno, 'campo' => config('enum.campi')[$j]])}}"
                                                class="btn shadow {{$campo == config('enum.campi')[$j] ? 'btn-primary' : 'btn-secondary'}} my-2">
                                    <div>{{config('enum.campi')[$j]}}</div>
                                    <div>{{config('enum.terreni')[$j]}}</div>
                                </a>
                            </div>
                        @endfor

                    </div>
                    <div class="row row-cols-2 row-cols-md-6 gx-1" style="display: flex; justify-content: space-around; margin: 5px 0; align-items: center" >
                        @include('partials.infoCreditoPrivilegi')
                       {{-- @if(Auth::user()->isAdmin)
                            <a href="{{route('stampa')}}"
                               class="btn shadow btn-success">stampa
                            </a>
                        @endif--}}
                    </div>
                </div>
            </div>
        </section>

        <div class="album bg-danger" >
            <div class="px-2" style="padding: 20px 0">
                @for($i = 9; $i < 23; $i++)
                <div class="row row-cols-1 row-cols-md-6 gx-3" style="display: flex; margin-bottom: 20px; align-items: center" >

                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body p-1 text-center bg-light">
                                    @if($campo == 'Campo1' || $campo == 'Campo2')
                                        <p class="card-text fs-3">{{$i}}:00 - {{$i+1}}:00</p>
                                    @else
                                        <p class="card-text fs-3">{{$i}}:30 - {{$i+1}}:30</p>
                                    @endif

                                </div>
                            </div>
                        </div>

                    @if(isset($bookings[$i]) && isset($bookings[$i]->users[0]))
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body ">
                                    <p class="card-text ">{{$bookings[$i]->users[0]->name}}</p>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="col">
                            <div class="card shadow">
                                @if($isAvailable)
                                    <a class="card-body btn btn-primary" data-oraraio="{{$i}}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <p class="card-text ">&nbsp;</p>
                                    </a>
                                @else
                                    <a class="card-body btn btn-primary" data-oraraio="{{$i}}"  data-bs-target="#exampleModal">
                                        <p class="card-text ">&nbsp;</p>
                                    </a>
                                @endif
                            </div>
                        </div>
                    @endif

                    @if(isset($bookings[$i]) && isset($bookings[$i]->users[1]))
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body ">
                                    <p class="card-text ">{{$bookings[$i]->users[1]->name}}</p>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="col">
                            <div class="card shadow">
                                @if($isAvailable)
                                    <a class="card-body btn btn-primary" data-oraraio="{{$i}}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <p class="card-text ">&nbsp;</p>
                                    </a>
                                @else
                                    <a class="card-body btn btn-primary" data-oraraio="{{$i}}"  data-bs-target="#exampleModal">
                                        <p class="card-text ">&nbsp;</p>
                                    </a>
                                @endif
                            </div>
                        </div>
                    @endif

                    @if(isset($bookings[$i]) && isset($bookings[$i]->users[2]))
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body ">
                                    <p class="card-text ">{{$bookings[$i]->users[2]->name}}</p>
                                </div>
                            </div>
                        </div>
                    @else
                        @if(isset($bookings[$i]) && $bookings[$i]->tipo == 'Singolare')
                            <div class="col"></div>
                        @else
                            <div class="col">
                                <div class="card shadow">
                                    @if($isAvailable)
                                        <a class="card-body btn btn-primary" data-oraraio="{{$i}}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            <p class="card-text ">&nbsp;</p>
                                        </a>
                                    @else
                                        <a class="card-body btn btn-primary" data-oraraio="{{$i}}"  data-bs-target="#exampleModal">
                                            <p class="card-text ">&nbsp;</p>
                                        </a>
                                    @endif
                                </div>
                            </div>
                        @endif
                    @endif

                    @if(isset($bookings[$i]) && isset($bookings[$i]->users[3]))
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body ">
                                    <p class="card-text ">{{$bookings[$i]->users[3]->name}}</p>
                                </div>
                            </div>
                        </div>
                    @else
                        @if(isset($bookings[$i]) && $bookings[$i]->tipo == 'Singolare')
                            <div class="col"></div>
                        @else
                            <div class="col">
                                <div class="card shadow">
                                    @if($isAvailable)
                                        <a class="card-body btn btn-primary" data-oraraio="{{$i}}" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            <p class="card-text ">&nbsp;</p>
                                        </a>
                                    @else
                                        <a class="card-body btn btn-primary" data-oraraio="{{$i}}"  data-bs-target="#exampleModal">
                                            <p class="card-text ">&nbsp;</p>
                                        </a>
                                    @endif
                                </div>
                            </div>
                        @endif
                    @endif

                    @if(isset($bookings[$i]))
                        <div class="col">
                            <div class="card shadow bg-warning">
                                <div class="card-body">
                                    <p class="card-text text-center" id="esiste{{$i}}">{{$bookings[$i]->tipo}}</p>
                                </div>
                            </div>
                        </div>
                    @else
                        <div id="esiste{{$i}}"></div>
                    @endif
                </div>
                @endfor
            </div>
        </div>
    </main>

    <footer class="text-muted py-5">
        <div class="container">
            <p class="float-end mb-1">
                <a href="#">Back to top</a>
            </p>

        </div>
    </footer>

@endsection

@section('footer')
    @parent
    <script>
        $('document').ready(function () {
            let messaggio = "{{session()->get('message')}}";
                if (messaggio != '') {
                    $('#messaggioModal').modal('toggle');
                    setTimeout(function(){ $('#messaggioModal').modal('toggle') }, 3000);
                }

            $('.btn-primary').on("click", function () {
                let orario = $(this).data('oraraio');
                $("#orariosel").html(orario);
                let id = 'esiste' + orario;
                let esiste = $("#" + id).html().trim();
                if (esiste == 'Singolare') {
                    $("#btnDoppio").css('display', 'none');
                    $("#btnSingolare").css('display', 'block');
                } else if (esiste == 'Doppio') {
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
