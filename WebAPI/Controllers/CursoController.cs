using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.BD;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [Route("api/curso")]
    [ApiController]
    public class CursoController : ControllerBase
    {
        private readonly AppDbContext _context;

        public CursoController(AppDbContext context)
        {
            _context = context; // Si context es null, lanzará un NullReferenceException
        }

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<IEnumerable<CursoModel>>> Getcursos()
        {
            return await _context.Cursos.ToListAsync();
        }

        [HttpGet]
        [Route("obtener/{id}")]
        public async Task<ActionResult<CursoModel>> GetcursoById(int id)
        {
            var curso = await _context.Cursos.FindAsync(id);

            if (curso == null)
            {
                return NotFound();
            }

            return curso;
        }

        [HttpPost]
        [Route("crear")]
        public async Task<ActionResult<CursoModel>> Postcurso([FromBody] CursoModel curso)
        {
            _context.Cursos.Add(curso);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetcursoById), new { id = curso.id }, curso);
        }

        [HttpPut]
        [Route("actualizar/{id}")]
        public async Task<IActionResult> Putcurso(int id, [FromBody] CursoModel curso)
        {
            if (id != curso.id)
            {
                return BadRequest();
            }

            _context.Entry(curso).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Cursos.Any(e => e.id == id))
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
        public async Task<IActionResult> Deletecurso(int id)
        {
            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
            {
                return NotFound();
            }

            _context.Cursos.Remove(curso);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}
