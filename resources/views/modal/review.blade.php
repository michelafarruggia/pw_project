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
                @if (count($errors) > 0)
                <script type="text/javascript">
                    $(document).ready(function() {
                        $('#reviewModal').modal('show');
                    });
                </script>
                @endif
                <form action="{{ route('addReview', $film->id) }}" method="POST">
                    @csrf
                    @method('POST')
                    <div class="form-group has-error">
                        <input type="text" class="form-control @error('titolo') is-invalid @enderror" name="titolo" id="titolo" placeholder="Titolo recensione" aria-describedby="basic-addon1" value="{{ old('titolo') }}">
                        @error('titolo')
                        <span id="basic-addon1" class="help-block">{{ $message }}</span>
                        @enderror
                    </div>

                    <br><br>
                    <div class="form-group has-error">
                        <select class="form-control @error('stelle') is-invalid @enderror" name="stelle" id="stelle">
                            <option value="">Stelle:</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        @error('stelle')
                        <span class="has-error">
                            <span id="stelle" class="help-block">{{ $message }}</span>
                            @enderror
                    </div>
                    <br><br>
                    <div class="form-group has-error">
                        <textarea class="form-control @error('textarea') is-invalid @enderror" type="addReview" name="textarea" id="textarea" cols="70" rows="10" placeholder="Scrivi la tua recensione ... ">{{ old('textarea') }}</textarea>
                        @error('textarea')
                        <span class="help-block" role="alert">
                            <span id="textarea" class="help-block">{{ $message }}</span>
                            @enderror
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