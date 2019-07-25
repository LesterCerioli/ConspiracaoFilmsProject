using System;
using System.Collections.Generic;
using System.Text;

namespace ConspiracaoFilms.Dominio.Entidades
{
    public class Clientes
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string CPF { get; set; }
        public string CNPJ { get; set; }
        public DateTime DataDeCadastro { get; set; }

        
    }
}
