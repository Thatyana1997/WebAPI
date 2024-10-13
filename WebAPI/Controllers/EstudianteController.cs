using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.BD;
using WebAPI.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebAPI.Controllers
{
    [Route("api/estudiante")]
    [ApiController]
    public class EstudianteController : ControllerBase
    {
        private readonly AppDbContext _context;

        public EstudianteController(AppDbContext context)
        {
            _context = context; // Si context es null, lanzará un NullReferenceException
        }

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<IEnumerable<EstudianteModel>>> GetEstudiantes()
        {
            return await _context.Estudiantes.ToListAsync();
        }
    }
}
