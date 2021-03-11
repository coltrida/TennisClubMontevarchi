<div id="ex1" class="modal" style="width: 350px">
    <h3>Riepilogo:</h3>
    <p>Giorno: {{$giorno}}</p>
    <p>Campo: {{$campo}}</p>
    <p>Orario: <span id="orariosel"></span></p>

    <div style="display:flex; justify-content: space-between; align-items: center">
        <div id="btnSingolare">
            <a data-tipo="Singolare"
               class="btn esegui"
               style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
            >
                Singolare
            </a>
        </div>
        <div id="btnDoppio">
            <a data-tipo="Doppio"
               class="btn esegui"
               style="color: black; margin: 0; border: black 1px solid; height: 40px; box-shadow: 2px 2px #888888;"
            >
                Doppio
            </a>
        </div>
    </div>

    </br>

    <a href="#" rel="modal:close">Annulla</a>
</div>
