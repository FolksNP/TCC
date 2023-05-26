<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <title>Cursos - Patrono Neves</title>
</head>
<body>
    <?php 
    session_start();
    include('header.php'); 
    @$cod = $_SESSION['codCurso'];
    
    ?>
     <!-- Swiper -->
  <div class="caixa-slider">
    <div #swiperRef="" class="swiper mySwiper">
      <DIV class="txtCursosSlider"><p>Todos os Nossos Cursos</p></DIV>
      <div class="swiper-wrapper">

        <?php $cursos = mysqli_query($con, "Select * from `cursos` "); 

      
      while($curso=mysqli_fetch_array($cursos)){
        echo"
        <div class=swiper-slide><a href=telaCurso.php?codCurso=$curso[codCurso]>
        
        <div class=container-carrossel>
        <img src=$curso[capaCurso]  class=card-imagem> 
        <h3>$curso[nomeCurso] </h3>
        <p></p>
        </div></a>
        </div>";
        
        }
        
        ?>
        </div>

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

    <div #swiperRef="" class="swiper mySwiper">
      <DIV class="txtCursosSlider"><p>Seja um mestre na cozinha</p></DIV>
      <div class="swiper-wrapper">

        <?php $cursos = mysqli_query($con, "Select * from `cursos` where `categoria` = 'Marcenaria' "); 

      
      while($curso=mysqli_fetch_array($cursos)){
        echo"
        <div class=swiper-slide><a href=telaCurso.php?codCurso=$curso[codCurso]>
        
        <div class=container-carrossel>
        <img src=$curso[capaCurso]  class=card-imagem> 
        <h3>$curso[nomeCurso] </h3>
        <p></p>
        </div></a>
        </div>";
        
        }
        
        ?>
        </div>
        

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    <div #swiperRef="" class="swiper mySwiper">
      <DIV class="txtCursosSlider"><p>Seja um mestre na cozinha</p></DIV>
      <div class="swiper-wrapper">

        <?php $cursos = mysqli_query($con, "Select * from `cursos` where `categoria` = 'Confeitaria' "); 

      
      while($curso=mysqli_fetch_array($cursos)){
        echo"
        <div class=swiper-slide><a href=telaCurso.php?codCurso=$curso[codCurso]>
        
        <div class=container-carrossel>
        <img src=$curso[capaCurso]  class=card-imagem> 
        <h3>$curso[nomeCurso] </h3>
        <p></p>
        </div></a>
        </div>";
        
        }
        
        ?>
        </div>
        

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    <div #swiperRef="" class="swiper mySwiper">
      <DIV class="txtCursosSlider"><p>Expresse sua arte</p></DIV>
      <div class="swiper-wrapper">

        <?php $cursos = mysqli_query($con, "Select * from `cursos` where `categoria` = 'Arte' "); 

      
      while($curso=mysqli_fetch_array($cursos)){
        echo"
        <div class=swiper-slide><a href=telaCurso.php?codCurso=$curso[codCurso]>
        
        <div class=container-carrossel>
        <img src=$curso[capaCurso]  class=card-imagem> 
        <h3>$curso[nomeCurso] </h3>
        <p></p>
        </div></a>
        </div>";
        
        }
        
        ?>
        </div>
        

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    <div #swiperRef="" class="swiper mySwiper">
      <DIV class="txtCursosSlider"><p>Torne-se um especialista dos equipamentos elétronicos</p></DIV>
      <div class="swiper-wrapper">

        <?php $cursos = mysqli_query($con, "Select * from `cursos` where `categoria` = 'Manutenção' "); 

      
      while($curso=mysqli_fetch_array($cursos)){
        echo"
        <div class=swiper-slide><a href=telaCurso.php?codCurso=$curso[codCurso]>
        
        <div class=container-carrossel>
        <img src=$curso[capaCurso]  class=card-imagem> 
        <h3>$curso[nomeCurso] </h3>
        <p></p>
        </div></a>
        </div>";
        
        }
        
        ?>
        </div>
        

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
  </div>

  <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 5,
      //centeredSlides: true,
      spaceBetween: 10,
      pagination: {
        el: ".swiper-pagination",
        type: "fraction",
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });

    var appendNumber = 4;
    var prependNumber = 1;
    document
      .querySelector(".prepend-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide([
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>",
        ]);
      });
    document
      .querySelector(".prepend-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.prependSlide(
          '<div class="swiper-slide">Slide ' + --prependNumber + "</div>"
        );
      });
    document
      .querySelector(".append-slide")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide(
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>"
        );
      });
    document
      .querySelector(".append-2-slides")
      .addEventListener("click", function (e) {
        e.preventDefault();
        swiper.appendSlide([
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
          '<div class="swiper-slide">Slide ' + ++appendNumber + "</div>",
        ]);
      });
  </script>
    
    <!-- <script src="../scripts/cursos.js"></script> -->
    
    <?php include('footer.php'); ?>
</body>
</html>