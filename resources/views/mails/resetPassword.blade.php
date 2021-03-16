@component('mail::message')
# Reset Password

Cliccando il pulsante sottostante, la tua password sarà cancellata e potrai re-impostare una nuova password

@component('mail::button', ['url' => route('reimpostaPassword', $id)])
Reimposta Password
@endcomponent

<br>
{{ config('app.name') }}
@endcomponent
