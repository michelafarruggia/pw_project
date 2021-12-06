<div class="modal fade" id="deleteReviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <p>Sei sicuro di voler eliminare la tua recensione?</p>
            </div>
            <div class="modal-footer">
            <div class="form-inline">
                <div class="form-group">
                <button type="button" class="btn btn-default" data-dismiss="modal">Annulla</button>
                </div>
                <div class="form-group">
                <form action="{{ route('removeReview', $review->id) }}" method="POST">
                    @csrf
                    @method('POST')
                    <button type="button submit" class="btn btn-primary">Elimina</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>