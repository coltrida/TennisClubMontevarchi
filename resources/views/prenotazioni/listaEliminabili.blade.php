@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <div class="panel panel-default">
                <div class="panel-heading"><h2>Prenotazioni Eliminabili</h2></div>
                <table class="table">
                    <thead>
                    <tr>
                        <th><h4>Giorno</h4></th>
                        <th><h4>Ora</h4></th>
                        <th><h4>Campo</h4></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($bookings as $booking)
                        <tr style="border: rgba(0,0,0,0.61) 1px solid">
                            <td>{{$booking->giorno}}</td>
                            <td>{{$booking->orainizio}}</td>
                            <td>{{$booking->campo}}</td>
                            <td>
                                <div class="col">
                                    <a href="{{route('eliminaPrenotazione', $booking->id)}}" class="btn btn-sm btn-danger" style="margin: 0">
                                        <em class="fa fa-trash"></em>

                                    </a>
                                    @if($booking->users->count() > 1)
                                        <span title="Ci sono {{$booking->users->count()}} partecipanti a questa prenotazione" class="badge">{{$booking->users->count()}}</span>
                                    @endif
                                </div>

                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
@endsection
