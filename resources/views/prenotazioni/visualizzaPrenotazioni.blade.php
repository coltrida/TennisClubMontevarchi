@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <div style="display: flex; justify-content: space-between; align-items: center">
                <div><h1>Campo 1</h1></div>
                <div>
                    <button class="btn btn-info" style="border: black solid 1px" type="submit">Campo 2</button>
                    <button class="btn btn-info" style="border: black solid 1px"  type="submit">Campo 3</button>
                    <button class="btn btn-info" style="border: black solid 1px"  type="submit">Campo 4</button>
                </div>
            </div>

            @for($i = 9; $i < 23; $i++)
                <div class="alert alert-danger"
                     style="border: black 1px solid;">
                    <div class="row">
                        <div class="alert alert-success col-sm-6 col-md-2"
                             style="padding: 8px; color: black; margin: 0 10px; width: 120px; border: black 1px solid; box-shadow: 2px 2px #888888;"
                        >
                            {{$i}}:00 - {{$i+1}}:00
                        </div>
                        <a href="{{route('prenota', ['giorno'=>$giorno, 'ora'=>$i, 'campo' => 'Campo1'])}}"
                           class="btn btn-success col-sm-6 col-md-2"
                           style="color: black; margin: 0 5px 0 40px; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
                        >
                            Massimo Cecchi
                        </a>
                        <a href="{{route('prenota', ['giorno'=>$giorno, 'ora'=>$i, 'campo' => 'Campo1'])}}"
                           class="btn btn-success col-sm-6 col-md-2"
                           style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
                        >
                            Massimo Cecchi
                        </a>
                        <a href="{{route('prenota', ['giorno'=>$giorno, 'ora'=>$i, 'campo' => 'Campo1'])}}"
                            class="btn btn-success col-sm-6 col-md-2"
                           style="color: black; margin: 0 5px; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
                        >
                            &nbsp;
                        </a>
                        <a href="{{route('prenota', ['giorno'=>$giorno, 'ora'=>$i, 'campo' => 'Campo1'])}}"
                            class="btn btn-success col-sm-6 col-md-2"
                            style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
                        >
                            Massimo Cecchi
                        </a>
                        <div
                            class="alert alert-info col-sm-6 col-md-1"
                            style="padding: 8px; color: black; margin: 0 0 0 40px; border: black 1px solid; box-shadow: 2px 2px #888888;"
                        >Singolare</div>
                    </div>

                </div>
            @endfor
        </div>
    </section>
@endsection

