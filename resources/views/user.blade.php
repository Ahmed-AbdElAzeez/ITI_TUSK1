
    @extends('app.app')
    @section('content')
    <div class= "container" style="width: 100%;">

        <h1>All user </h1>
        <!-- @dump ($user) -->

        <table class="table" style="width: 100%;">
            <thead>
                <tr>
                    <th>name</th>
                    <th>email</th>
                    <th>id</th>
                </tr>
            </thead>
            @foreach ($user as $u)
            <tbody>
                <tr>
                    <td> {{$u['name']}} </td>
                    <td> {{$u['email']}} </td>
                    <td> {{$u['id']}} </td>
                    <td> <a href="/user/{{$u['id']}}" class="btn btn-primary"> View </a></td>
                </tr>
            </tbody>

            @endforeach
        </table>


    </div>
    @endsection
</body>
</html>
