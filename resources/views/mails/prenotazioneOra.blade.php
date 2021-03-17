@component('mail::message')
# Prenotazione Effettuata

<p>Il giorno: {{$giorno}}</p>
<p>Alle ore: {{$ora}}</p>
<p>Nel campo: {{$campo}}</p>
<p>{{$tipo}}</p>
<p>Hai un credito rimanente: € {{$credito}}</p>

Thanks,<br>
<h3>{{ config('app.name') }}</h3>
@endcomponent
