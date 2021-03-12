<div style="display: flex; justify-content: space-between; align-items: center">
    <div><h1>{{$campo}}</h1></div>
    <div style="display: flex; justify-content: space-between; align-items: center">
        <div>
            <a href="{{route('prenotazioni', ['giorno' => $ieri, 'campo' => $campo])}}">
                <h2><i class="fas fa-arrow-circle-left"></i></h2>
            </a>
        </div>
        <div style="margin: 0 10px"><h2>{{$giorno}}</h2></div>
        <div>
            <a href="{{route('prenotazioni', ['giorno' => $domani, 'campo' => $campo])}}">
                <h2><i class="fas fa-arrow-circle-right"></i></h2>
            </a>
        </div>
        @include('prenotazioni.partials.messaggio')
    </div>

    <div>
        <a href="{{route('prenotazioni', ['giorno' => $giorno, 'campo' => 'Campo1'])}}"
           class="btn btn-info" style="border: black solid 1px; box-shadow: 2px 2px rgba(43,43,43,0.93)" type="submit">Campo 1</a>
        <a href="{{route('prenotazioni', ['giorno' => $giorno, 'campo' => 'Campo2'])}}"
           class="btn btn-info" style="border: black solid 1px; box-shadow: 2px 2px rgba(43,43,43,0.93)" type="submit">Campo 2</a>
        <a href="{{route('prenotazioni', ['giorno' => $giorno, 'campo' => 'Campo3'])}}"
           class="btn btn-info" style="border: black solid 1px; box-shadow: 2px 2px rgba(43,43,43,0.93)" type="submit">Campo 3</a>
        <a href="{{route('prenotazioni', ['giorno' => $giorno, 'campo' => 'Campo4'])}}"
           class="btn btn-info" style="border: black solid 1px; box-shadow: 2px 2px rgba(43,43,43,0.93)" type="submit">Campo 4</a>
    </div>
</div>
