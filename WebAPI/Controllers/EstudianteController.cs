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

        [HttpGet]
        [Route("obtener/{id}")]
        public async Task<ActionResult<EstudianteModel>> GetEstudianteById(int id)
        {
            var estudiante = await _context.Estudiantes.FindAsync(id);

            if (estudiante == null)
            {
                return NotFound();
            }

            return estudiante;
        }

        [HttpPost]
        [Route("crear")]
        public async Task<ActionResult<EstudianteModel>> PostEstudiante([FromBody] EstudianteModel estudiante)
        { 
            _context.Estudiantes.Add(estudiante);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetEstudianteById), new { id = estudiante.id }, estudiante);
        }

        [HttpPut]
        [Route("actualizar/{id}")]
        public async Task<IActionResult> PutEstudiante(int id, [FromBody] EstudianteModel estudiante)
        {
            if (id != estudiante.id)
            {
                return BadRequest();
            }

            _context.Entry(estudiante).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Estudiantes.Any(e => e.id == id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        [HttpDelete]
        [Route("eliminar/{id}")]
        public async Task<IActionResult> DeleteEstudiante(int id)
        {
            var estudiante = await _context.Estudiantes.FindAsync(id);
            if (estudiante == null)
            {
                return NotFound();
            }

            _context.Estudiantes.Remove(estudiante);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}
