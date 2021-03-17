@extends('layouts.template')

@section('container')
    <section class="main-content">
        <div class="container body-content">
            <h1>Tariffe Orarie in vigore dal 01/12/2011</h1>
            <table class="table">
                <tbody>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">Singolare Soci</td><td>5.50 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">Singolare NON Soci</td><td>10 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">Doppio Soci</td><td>4.50 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">Doppio NON Soci</td><td>6.50 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">Soci under 18 / over 65</td><td>3 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">NON Soci over 65</td><td>7 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td style="border: rgba(0,0,0,0.61) 1px solid!important;">NON Soci under 18</td><td>3.50 euro all'ora per persona</td>
                    </tr>
                    <tr style="border: rgba(0,0,0,0.61) 1px solid">
                        <td colspan="2">NB: IL COSTO DEL GETTONE PER IL RISCALDAMENTO E' DI EURO 5.00 L'ORA CHE DOVRA' ESSERE ACQUISTATO PRESSO LA SEGRETERIA</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
@endsection
