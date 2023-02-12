<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<?php
    include('header.php'); 
    ?>

    <br>

<body style="background: var(--bs-gray-900);">
    <section class="py-4 py-xl-5" style="background: var(--bs-dark);">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col">
                    <div>
                        <div style="background: #000;position: fixed;top: 0;right: 0;bottom: 0;left: 0;z-index: -99;height: 100vh;">
    
                        </div>
                    </div>
                    <p data-aos="fade-up" data-aos-duration="50" style="color: var(--bs-success);font-size: 83px;font-weight: bold;text-align: left;margin-top: 82px;">Patrono Neves.&nbsp;</p>
                    <h1 class="pulse animated" style="color: var(--bs-green);">Queremos educar, cada dia mais!</h1>
                </div>
                <div class="col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                    <div class="card mb-5">
                        <div class="card-body p-sm-5" style="height: 634.15px;width: 455px;background: var(--bs-teal);">
                            <h2 class="text-center mb-4" style="background: var(--bs-card-cap-bg);color: var(--bs-card-bg);">Cadastre-se</h2>
                            <form method="post">
                                <div class="mb-3"><input class="form-control" type="text" id="name-2" name="name" placeholder="Nome"></div><input class="form-control" type="email" id="email-2" name="email" placeholder="Email"><input class="form-control" type="email" placeholder="Confirme Email" name="conEmail" style="margin-bottom: 7px;margin-top: 15px;"><input class="form-control" type="email" placeholder="Senha" name="conSenha" style="margin-bottom: 7px;margin-top: 15px;"><input class="form-control" type="email" placeholder="Confirme Senha" name="conSenha" style="margin-bottom: 7px;margin-top: 15px;"><input class="form-control" type="email" placeholder="Usuário (Opcional)" name="usuario" style="margin-bottom: 7px;margin-top: 15px;">
                                <div class="mb-3"></div>
                                <div class="mb-3"></div>
                                <div></div>
                            </form><button class="btn btn-primary d-block w-100" type="submit">Send </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script src="assets/js/script.min.js"></script>

    <?php
        include('footer.php');
    ?>

</body>

</html>