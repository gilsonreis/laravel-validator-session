@extends("base")

@section('content')
    <form action="{{route("store")}}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="categoria">Categoria</label>
            <select id="categoria" name="category_id" class="form-control">
                <option value="">Selecione</option>
                @foreach($categorias as $categoria)
                    <option value="{{$categoria->id}}" @if(old('category_id') == $categoria->id) selected="selected" @endif>{{$categoria->name}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="filme">Filme</label>
            <select id="filme" name="movie_id" class="form-control">
                @foreach($filmes as $filme)
                    <option value="{{$filme->id}}" @if(old('movie_id') == $filme->id) selected="selected" @endif>{{$filme->title}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="rate">Nota</label>
            <input type="number" min="0" max="10" step="1" name="rate" id="rate" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary">Salvar</button>
    </form>
@endsection

@section("javascript")
    <script type="text/javascript">

        $(document).ready(function () {
            $("#categoria").change(function () {
                var categoria_id = $(this).val();

                // Fazer validação aqui via javascript pra limpar filmes caso selecione a categoria vazia.

                $.get('/default/pegar-filmes-por-categorias/' + categoria_id, function (response) {
                    $('#filme').empty();
                    $('#filme').append('<option value="">Selecione</option>');
                    for (var i in response) {
                        var item = response[i];

                        $('#filme').append('<option value="'+ item.id +'">' + item.title + '</option>');

                    }
                }, 'json');
            });
        });

    </script>
@endsection