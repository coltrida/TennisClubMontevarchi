@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Storna Socio</h1>
            <form action="{{route('setStornaSocio')}}" method="post">
                @csrf
                <table id="example" class="display" style="width:100%">
                    <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Credito</th>
                        <th>Seleziona</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($soci as $socio)
                        <tr>
                            <td>{{$socio->name}}</td>
                            <td>€ {{$socio->credito}}</td>
                            <td><input type="checkbox" class="form-control" name="selezionati[]" value="{{$socio->id}}" style="width: 20px"></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <div style="display: flex; justify-content: space-around; align-items: center">
                    <div style="display: flex; justify-content: center; align-items: center">
                        <label for="importo" style="margin-right: 10px"><h3>Importo:</h3></label>
                        <select name="importo" id="importo" class="form-control" style="border: black 1px solid">
                            @foreach($tagli = config('enum.tagli') as $taglio)
                                <option value="{{$taglio}}">{{$taglio}}</option>
                            @endforeach

                        </select>
                    </div>
                    <div>
                        <button type="submit" class="form-control btn-success">Storna</button>
                    </div>
                </div>
            </form>
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
