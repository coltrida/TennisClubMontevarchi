<!-- Modal -->

<div class="modal fade" id="messaggioModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Informazione Prenotazione</h5>
            </div>
            <div class="modal-body">
                <p>{{session()->get('message')}}</p>
            </div>
        </div>
    </div>
</div>

