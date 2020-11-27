// Promisse a solução para promisses aninhadas ou Promisse Hell:
function pegarUsuarios(){
  return new Promise( (resolve,reject) => {    
    setTimeout( () => {    
      resolve([
        {nome:"Lucas" , lang:"JS"},
        {nome: "Victor" , lang:"C#"},
        {nome: "Daniel" , lang:"Java"}
      ]);
    },3000);
  });
}

// Não funciona Promise { <pending> }
 var usuarios = pegarUsuarios();
 console.log(usuarios);

// Funciona porém traz o problema de aninhamento encadeado de promise ou 
// promisse hell:
 pegarUsuarios().then( usuarios => {
  var users = usuarios;
  console.log(users);
});

// O await bloqueia o fluxo do código ou seja só executa o console de baixo quando o 
// o resultado da função pegarUsuarios() seja retornado e exibido na var usuarios
// porém resolve o problema de promisse hell, contudo com o pró de bloquear fluxo 
// de códigos:
async function pedido_one(){
  var usuarios = await pegarUsuarios();
  console.log(usuarios);
  console.log("Testando se o await, bloqueia o fluxo do code ou não.");
 }

 pedido_one();

// Dessa forma não bloqueia o fluxo do código pois está totalmente assíncrono:
async function pedi_two(){
  pegarUsuarios().then( usuarios => {
    var users = usuarios;
    console.log(users);
  });
  console.log("Testando se assim, bloqueia o fluxo do code ou não.");
}
pedido_two();

//-----------------------------------------------------------------------------

// Desafio JS:
// Observando o código abaixo e a porseguinte promisse aninhada ou promisse hell
// converta utilizando o async/await quando necessário:
function pegarId(){
  return new Promise( (resolve,reject) => {
    setTimeout( () => {
      resolve(15);
    }, 1500);
  });
}

function buscarEmailNoBanco(id){
  return new Promise( (resolve,reject) => {
    setTimeout( () => {
      if( id = 15) {
        resolve("victorlima@guia.com.br");
      } else{
        reject("O email não foi encontrado, o id passado não está cadastrado.");
      }
      
    },2000);
  });
}

function enviarEmail(corpo,para){
  return new Promise ( (resolve,reject) => {
    setTimeout( () =>{
      var deuErro = false;
      if(!deuErro){
        resolve({time: 6 , to:para , msg: corpo});
      } else{
        reject("Falha no envio!");
      }
    } , 4000);
  });
}


// Promisse Aninhada ou Promisse Hell para conversão:
console.log("Início");
pegarId().then((id) => {
  buscarEmailNoBanco(id).then((email) =>{
    enviarEmail("Olá, como vai?",email).then((dadosenvio) => {
      console.log("-> Os dados foram enviados para: "+dadosenvio);
      console.log("Email enviado, para o usuário com o id "+id);
    });
  }).catch((err) => {
    console.log(err);
  });
});
console.log("Fim");

// Resolução do Desafio:
async function execEmail(mensagem){
  var id = await pegarId();
  var email = await buscarEmailNoBanco(id);
  // Não colocamos await em enviarEmail pois e-mails podem demorar para serem enviados
  // então para não bloquear nossa aplicação enquanto o e-mail é enviado então optamos
  // por fazer com o then de forma totalmente asssíncrona não bloqueante:
  enviarEmail(mensagem,email).then((dadosenvio) =>{
    console.log(dadosenvio);
    console.log("Email enviado com sucesso para o id " + id);
  });
}
execEmail("Testando o envio de email.");
