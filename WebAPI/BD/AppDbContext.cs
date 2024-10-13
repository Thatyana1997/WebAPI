using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using WebAPI.Models;

namespace WebAPI.BD
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<EstudianteModel> Estudiantes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<EstudianteModel>()
                .HasKey(e => e.id); // Especifica la clave primaria
        }
    }
}
