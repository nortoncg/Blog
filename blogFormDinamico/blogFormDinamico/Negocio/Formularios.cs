using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace blogFormDinamico.Negocio
{
    public class Formularios
    {
        private int idformularios = 0;
        private String tituloformulario = "";
        private String datacriacao = "";
        private int permissao = 0;

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
            Persistencia.pFormularios oForm = new Persistencia.pFormularios();
            oForm.tituloFormulario = tituloFormulario;
            oForm.dataCriacao = dataCriacao;
            oForm.Permissao = Permissao;

            return oForm.Gravar(); 
        }
    }
}