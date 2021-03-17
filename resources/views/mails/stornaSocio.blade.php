@component('mail::message')
    # {{ config('app.name') }} - Storna Credito

    <p>Il Circolo Tennis Montevarchi ha stornato il tuo credito di € {{$importoStornato}}.</p>
    <p>Il tuo attuale credito è di € {{$creditoAggiornato}}.</p>

    Thanks,<br>
    {{ config('app.name') }}
@endcomponent
