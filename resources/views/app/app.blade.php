<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        body {
            font-size: x-large;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="https://www.iti.gov.eg/iti/home">ITI </a>
            <a class="nav-link active" aria-current="page" href="/homepage/{username}"> Home</a>
            <a class="nav-link active" aria-current="page" href="/user">All users</a>
            <a class="nav-link active" aria-current="page" href="http://127.0.0.1:5501/index.html">my info</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    </li>

                    <li class="nav-item">
                    </li>
                </ul>
            </div> -->
        </div>
    </nav>


    <div class="container " style="background-color:b3d7ef" >
        @yield('content')
    </div>

    <div class="container " style="background-color:yellow">
        @yield('main')
    </div>





    <footer>
        <h3 style="text-align: center">copyrights@iti2022 </h3>
    </footer>

</body>

</html>
