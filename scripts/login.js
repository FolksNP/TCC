function myFunction(pass) {

    if(pass=='senha1'){
            var a = document.getElementById("senha1");
            if (a.type === "password") {
                a.type = "text";
                } else {
                    a.type = "password";
                }
    
    }if(pass == 'senha2'){
        var b = document.getElementById("senha2");
    if (b.type === "password") {
      b.type = "text";
    } else {
        b.type = "password";
    }
    }
    
    // Confirmação no login
    if(pass=='senhaLogin'){
            var c = document.getElementById("senhaLogin");
            if (c.type === "password") {
                c.type = "text";
                } else {
                    c.type = "password";
                }
    
    }
    }
    
    
    
    
    // função para conferir se a senha está correta
    
    function validarSenha(name1, name2)
    {
      document.getElementById("btnCad").disabled = true;
        var senha1 = document.getElementById(name1).value;
        var senha2 = document.getElementById(name2).value;
            
        if (senha1 != "" && senha2 != "" && senha1 === senha2)
        {
            //alert('senha iguais');
          document.getElementById("btnCad").disabled = false;
          document.getElementById("btnCad").style.backgroundColor='#116798';
          fundo.style.border = 'solid 2px #116798';
          confira = document.querySelector('#confira');                
          confira.style.display = 'none';
          document.getElementById("btnCad").style.cursor='pointer';
        }
        else
        {
          fundo = document.querySelector('#senhaInput2');
          confira = document.querySelector('#confira');                
          confira.style.display = 'block';
          fundo.style.border = 'solid 3px red';      
          document.getElementById("btnCad").disabled = true;
          document.getElementById("btnCad").style.backgroundColor='rgb(113, 113, 113)';
          document.getElementById("btnCad").style.cursor='not-allowed';
        }
    }