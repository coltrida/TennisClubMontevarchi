@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Prenotazioni Particolari</h1>

            <form action="{{route('setPrenotazioniParticolari')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col">
                        <select class="form-control" style="border: 1px black solid" name="campo">
                            @foreach(config('enum.campi') as $campo)
                                <option value="{{$campo}}">{{$campo}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <span>Dal:</span><input class="form-control"
                               style="border: 1px black solid"
                               type="date"
                               name="giornoPartenza">
                    </div>
                    <div class="col">
                        <span>Ore:</span> <select class="form-control" style="border: 1px black solid" name="orePartenza">
                            @for($i=9; $i <= 22; $i++)
                                <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <span>Al: </span><input class="form-control"
                               style="border: 1px black solid"
                               type="date"
                               name="giornoFine">
                    </div>
                    <div class="col">
                       <span>Ore:</span>  <span>Ore:</span> <select class="form-control" style="border: 1px black solid" name="oreFine">
                            @for($i=9; $i <= 22; $i++)
                                <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </div>
                </div>
                <br>
                <div class="col">
                    <button type="submit" class="btn btn-primary form-control">Inserisci</button>
                </div>
            </form>

        </div>
    </section>
@endsection
