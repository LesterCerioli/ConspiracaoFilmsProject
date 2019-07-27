using ConspiracaoFilms.Dominio.Entidades;
using JetBrains.Annotations;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace ConspiracaoFilms.Repositorio.Context
{
    public class ConspiracaoFilmsContext: DbContext
    {
       

        public DbSet<Clientes> Clientes { get; set; }
        public DbSet<Produtos> Produtos { get; set; }
        public ConspiracaoFilmsContext(DbContextOptions options) : base(options)
        {

        }
    }
}
