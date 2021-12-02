<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="reviewModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">
                    <font color="#cfb7f6">{{ $film->titolo }}</font>, inserisci una recensione:</i>
                </h4>
            </div>
            <div class="modal-body">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        @php
                        $i = 0;
                        @endphp
                        @for($i = 0; $i <= 5; $i++) 
                        <li><a href="#">{{ $i }}</a></li>
                        @endfor
                    </ul>
                </div>
                <br>
                <form>
                    <div class="form-group">
                        <textarea class="form-control" rows="3" placeholder="Scrivi la tua recensione ... "></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>
                <button type="button" class="btn btn-primary">Salva</button>
            </div>
        </div>
    </div>
</div>