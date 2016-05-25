using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;                      
using System.Data.SqlClient;

namespace blogFormDinamico.Persistencia
{
    public class pFormularios
    {
        private int idformularios = 0;
        private String tituloformulario = "";
        private String datacriacao = "";
        private int permissao = 0;

        private const string DB_CONN_STRING = "Data Source=(local);Initial Catalog=BDLP2015;Integrated Security=SSPI";
        SqlConnection SQLConnection=null;

        public pFormularios()
        {
            SQLConnection = new SqlConnection();
            try
            {
                SQLConnection.ConnectionString = DB_CONN_STRING;
                SQLConnection.Open();
            }
            catch (Exception Ex)
            {
            }
        }

        public int IdFormularios
        {
            get { return this.idformularios; }
            set { this.idformularios = value; }
        }

        public String tituloFormulario
        {
            get { return this.tituloformulario; }
            set { this.tituloformulario = value; }
        }

        public String dataCriacao
        {
            get { return this.datacriacao; }
            set { this.datacriacao = value; }
        }

        public int Permissao
        {
            get { return this.permissao; }
            set { this.permissao = value; }
        }

        public String Gravar()
        {
            String sSQLCommand = "INSERT INTO Formularios (idFormulario, tituloFormulario, dataCriacao, permissao)  " + 
                                   "VALUES("+ 1 +", '"+ tituloFormulario +"', '"+dataCriacao+"', "+permissao+");";
            try
            {
                SQLConnection.Open();
                SqlCommand cmd = new SqlCommand(sSQLCommand, SQLConnection);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }

            SQLConnection.Close();

            return "";
        }
    }
}