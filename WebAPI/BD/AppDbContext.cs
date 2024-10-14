using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using WebAPI.Models;

namespace WebAPI.BD
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<EstudianteModel> Estudiantes { get; set; }
        public DbSet<CursoModel> Cursos { get; set; }
        public DbSet<UsuarioModel> Usuarios { get; set; }
        public DbSet<MatriculaModel> Matricula { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<EstudianteModel>()
                .HasKey(e => e.id); // Especifica la clave primaria

            modelBuilder.Entity<CursoModel>()
               .HasKey(e => e.id); // Especifica la clave primaria

            modelBuilder.Entity<UsuarioModel>()
               .HasKey(e => e.id); // Especifica la clave primaria

            modelBuilder.Entity<MatriculaModel>()
               .HasKey(e => e.id); // Especifica la clave primaria
        }
    }
}
