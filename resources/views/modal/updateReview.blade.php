<div class="modal fade" id="updateReviewModal{{$review->id}}" tabindex="-1" role="dialog" aria-labelledby="reviewModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    Modifica recensione:
                </h4>
            </div>
            <div class="modal-body">
                <form action="{{ route('updateReview', $review->id) }}" method="POST">
                    @csrf
                    @method('POST')
                    <div class="form-group has-error">
                        <input type="text" class="form-control" name="titolo" id="titolo" placeholder="Titolo recensione" aria-describedby="basic-addon1" value="{{ $review->titolo }}">
                        
                    </div>

                    <br><br>
                    <div class="form-group has-error">
                        <select class="form-control" name="stelle" id="stelle">
                            <option value="">Stelle:</option>
                            <option selected="selected">
                                {{ $review -> numStelle }}
                            </option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="form-group has-error">
                        <textarea class="form-control " type="addReview" name="textarea" id="textarea" cols="70" rows="10" placeholder="Scrivi la tua recensione ... ">{{ $review->testo }}</textarea>
                       
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button submit" class="btn btn-primary">Salva</button>
            </div>
            </form>
        </div>
    </div>
</div>