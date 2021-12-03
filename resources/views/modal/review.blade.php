<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    Inserisci una recensione per <font color="#cfb7f6">{{ $film->titolo }}</font> :
                </h4>
            </div>
            <div class="modal-body">
                <form action="{{ route('addReview', $film->id) }}" method="POST">
                    @csrf
                    @method('POST')
                    <input type="text" class="form-control" name="titolo" id="titolo" placeholder="Titolo recensione" aria-describedby="basic-addon1">
                    <br><br>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" name="stelle" id="stelle" placeholder="Stelle">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-star"></div>
                        </div>
                    </div>
                    <br><br>
                    <textarea class="form-control" type="addReview" name="textarea" id="textarea" cols="70" rows="10" placeholder="Scrivi la tua recensione ... "></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button submit" class="btn btn-primary">Salva</button>
            </div>
            </form>
        </div>
    </div>
</div>