using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Parcialito2.Models;

public partial class Ra102011Context : DbContext
{
    public Ra102011Context()
    {
    }

    public Ra102011Context(DbContextOptions<Ra102011Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Elecciones2019> Elecciones2019s { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=CC5-13\\SQLEXPRESS; DataBase=RA_102011; Trusted_Connection=True; TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Elecciones2019>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__eleccion__3214EC27377B5A97");

            entity.ToTable("elecciones_2019");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Candidato)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("candidato");
            entity.Property(e => e.Departamento)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("departamento");
            entity.Property(e => e.Votos).HasColumnName("votos");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
