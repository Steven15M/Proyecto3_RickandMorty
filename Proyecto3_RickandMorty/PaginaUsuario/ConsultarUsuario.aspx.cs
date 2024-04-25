using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Proyecto3_RickandMorty.Models;
using RestSharp;

namespace Proyecto3_RickandMorty.PaginaUsuario
{
    public partial class ConsultarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Logica de la API
        protected void Button1_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            int randomId = random.Next(1, 672);

            RestClient client = new RestClient($"https://rickandmortyapi.com/api/character/{randomId}");
            string respuesta;

            RestRequest request = new RestRequest();
            var response = client.Get(request);

            respuesta = response.Content;

            Root resultado = JsonConvert.DeserializeObject<Root>(respuesta);

            Result oUsuario = JsonConvert.DeserializeObject<Result>(respuesta);

            img.ImageUrl = oUsuario.image;
            txtNombre.Text = oUsuario.name;
            txtEspecie.Text = oUsuario.species;
            txtOrigen.Text = oUsuario.origin.name;
            txtGenero.Text = oUsuario.gender;
            txtEstado.Text = oUsuario.status;
            txtTipo.Text = oUsuario.type;
            txtLocacionActual.Text = oUsuario.location.name;

        }
    }
}