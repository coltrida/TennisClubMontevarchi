@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Inserisci Socio</h1>
            @if(session()->has('message'))
                    {{session()->get('message')}}
            @endif
            <form action="{{route('setInserisciSocio')}}" method="post">
                @csrf
                <div class="form-group">
                    <label>Nome</label>
                    <input style="border: gray 1px solid" id="nome" type="text" class="form-control @error('nome') is-invalid @enderror" name="nome" value="{{ old('nome') }}" required autocomplete="nome" autofocus placeholder="nome">
                </div>
                <div class="form-group">
                    <label>Cognome</label>
                    <input style="border: gray 1px solid" id="cognome" type="text" class="form-control @error('cognome') is-invalid @enderror" name="cognome" value="{{ old('cognome') }}" required autocomplete="cognome" autofocus placeholder="cognome">
                </div>
                <div class="form-group">
                    <label >Anno di Nascita</label>
                    <input style="border: gray 1px solid" id="anno" type="number" class="form-control @error('anno') is-invalid @enderror" name="anno" required autocomplete="anno" placeholder="anno">
                </div>
                <div class="form-group">
                    <label for="tipo">Tipologia</label>
                    <select name="tipo" id="tipo" style="border: gray 1px solid" class="form-control @error('tipo') is-invalid @enderror">
                        @foreach(config('enum.tipo') as $tipo)
                            <option value="{{$tipo}}">{{$tipo}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="privilegi">Ore Privilegi</label>
                    <select name="privilegi" id="privilegi" style="border: gray 1px solid" class="form-control @error('privilegi') is-invalid @enderror">
                        @for($i = 0; $i < 8; $i++)
                            <option value="{{$i}}">{{$i}}</option>
                        @endfor
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Inserisci</button>
            </form>
        </div>
    </section>
@endsection
