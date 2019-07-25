using System;
using System.Collections.Generic;
using System.Text;

namespace ConspiracaoFilms.Dominio.Entidades
{
    public class Produtos : Entidade
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Tipo { get; set; }
        public int Quantidade { get; set; }
        public string UnidadeMedida { get; set; }
        public decimal Peso { get; set; }

        public override void Validate()
        {
            if (string.IsNullOrEmpty(Nome))
                AdicionarCritica("Nome do produto não foi informado");

            if (string.IsNullOrEmpty(Tipo))
                AdicionarCritica("Tipo deve ser preenchido");

        }
    }
}
