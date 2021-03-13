<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Conferma Prenotazione</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Campo: {{$campo}}</p>
                <p>Giorno: {{$giorno}}</p>
                <p>Orario: <span id="orariosel"></span> </p>
            </div>
            <div class="modal-footer" style="display: flex; justify-content: space-between; align-items: center">
                <div style="display: flex">
                    <a data-tipo="Singolare" class="btn btn-info esegui" id="btnSingolare">Singolare</a>
                    <a data-tipo="Doppio" class="btn btn-info esegui mx-1" id="btnDoppio">Doppio</a>
                </div>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
