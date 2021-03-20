@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <div style="display: flex; justify-content: space-between; align-items: center">
                <h1>Certificati Medici</h1>
                @error('certificato')
                    <span class="invalid-feedback" role="alert">
                        <h3>{{ $message }}</h3>
                    </span>
                @enderror
                @if(session()->has('message'))
                    <h3>{{session()->get('message')}}</h3>
                @endif
            </div>

                <table id="example" class="display" style="width:100%">
                    <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Scadenza</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($soci as $socio)
                            <tr>
                                <form action="{{route('setCertificato')}}" id="{{$socio->id}}" method="post">
                                    @csrf
                                    <td>{{$socio->name}}</td>
                                    <td><input type="date" name="certificato" value="{{$socio->scadenzaCertificato}}"></td>
                                    <input type="hidden" name="id" value="{{$socio->id}}">
                                    <td>
                                        <button type="submit" id="{{'bt'.$socio->id}}" class="form-control {{$socio->scadenzaCertificato ? 'btn-success' : 'btn-danger'}}">
                                            {{$socio->scadenzaCertificato ? 'Aggiorna' : 'Inserisci'}}
                                        </button>
                                    </td>
                                </form>
                            </tr>
                    @endforeach
                    </tbody>
                </table>
        </div>
    </section>
@endsection

@section('footer')
    @parent
    <script>
        $('document').ready(function () {
            $('#example').DataTable();
        });
    </script>
@endsection
