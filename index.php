<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Praktikum - 8</title>
    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="asset/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="asset/css/datatables.min.css">
    <link rel="stylesheet" href="asset/css/animate.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="asset/js/jquery-3.5.1.min.js"></script>
    <script src="asset/js/datatables.min.js"></script>
    <script src="asset/js/datedropper.pro.min.js"></script>
    <script src="asset/fontawesome-free-5.15.1-web/css/all.min.css"></script>
    <style>
        .py-3 {
            background-color: #BFAC95;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
        }

        .navbar {
            border-bottom: 1px solid black;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.php?halaman=home">Universitas Sukses</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link" href="index.php?halaman=home"> <i class="fas fa-home"></i> Home |</a>
                    <a class="nav-link" href="index.php?halaman=datamhs"> <i class="fas fa-user"></i> Mahasiswa</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Navbar END -->

    <!-- Content -->
    <?php require('controller/Menu.php') ?>
    <!-- Content END -->

    <!-- Footer -->
    <div class="py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="mb-0">Tugas Pemograman Berbasis Web Pertemuan 8</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer END -->

    <!-- Javascript -->
    <script src="asset/js/popper.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
</body>

</html>