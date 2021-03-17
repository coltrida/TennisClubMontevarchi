@component('mail::message')
# {{ config('app.name') }} - Ricarica Credito

<p>Il Circolo Tennis Montevarchi ti ha ricaricato di € {{$importoAccreditato}}.</p>
<p>Il tuo attuale credito è di € {{$creditoAggiornato}}.</p>

Thanks,<br>
{{ config('app.name') }}
@endcomponent
