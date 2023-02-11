<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="script" href="carrossel.js">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
    <link rel="stylesheet" href="bootstrap.5.2/css/bootstrap.min.css">
    
    <title>Cursos</title>
</head>
<body>
    <?php
    include('header.php'); 
    ?>

    <div class="pt-5 pb-5">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h3 class="mb-3">Cursos</h3>
            </div>
            <div class="col-6 text-right">
                <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            <div class="col-12">
                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/hanayome.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/demonslayeer.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/d6755b4fc47b011b18b7c0baaba7a85a.jpg">
                                        <div class="card-body">
                                             <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/mydress.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid"alt="Sem imagem" src="capas/aluguel.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/attack.jpg">
                                        <div class="card-body">
                                             <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="capas/baki.webp">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="Sem imagem" src="">
                                        <div class="card-body">
                                            <h4 class="card-title">aqui vem nome do curso</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>



    <script src="bootstap.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>