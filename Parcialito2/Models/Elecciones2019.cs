using System;
using System.Collections.Generic;

namespace Parcialito2.Models;

public partial class Elecciones2019
{
    public int Id { get; set; }

    public string? Departamento { get; set; }

    public string? Candidato { get; set; }

    public int? Votos { get; set; }
}
