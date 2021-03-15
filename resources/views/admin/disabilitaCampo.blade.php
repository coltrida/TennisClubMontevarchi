@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Abilita / Disabilita Campo</h1>
            <table class="table">
                <thead>
                <tr>
                    <th><h4>Campo</h4></th>
                    <th><h4>Stato</h4></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                @foreach($fields as $field)
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td>{{$field->nome}}</td>
                        <td>{{$field->stato}}</td>
                        <td>
                            <div class="col">
                                @if($field->disponibile)
                                    <a href="{{route('setDisabilitaCampo', $field->id)}}" class="btn btn-sm btn-danger" style="margin: 0">
                                        <i class="fas fa-minus-circle"></i>
                                    </a>
                                @else
                                    <a href="{{route('setDisabilitaCampo', $field->id)}}" class="btn btn-sm btn-success" style="margin: 0">
                                        <i class="fas fa-plus-circle"></i>
                                    </a>
                                @endif
                            </div>

                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </section>
@endsection
