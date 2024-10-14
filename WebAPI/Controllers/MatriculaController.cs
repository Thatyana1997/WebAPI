using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.BD;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [Route("api/matricula")]
    [ApiController]
    public class matriculaController : ControllerBase
    {
        private readonly AppDbContext _context;

        public matriculaController(AppDbContext context)
        {
            _context = context; // Si context es null, lanzará un NullReferenceException
        }

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<IEnumerable<MatriculaModel>>> GetMatriculas()
        {
            return await _context.Matricula.ToListAsync();
        }

        [HttpGet]
        [Route("obtener/{id}")]
        public async Task<ActionResult<MatriculaModel>> GetmatriculaById(int id)
        {
            var matricula = await _context.Matricula.FindAsync(id);

            if (matricula == null)
            {
                return NotFound();
            }

            return matricula;
        }

        [HttpPost]
        [Route("crear")]
        public async Task<ActionResult<MatriculaModel>> Postmatricula([FromBody] MatriculaModel matricula)
        {
            _context.Matricula.Add(matricula);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetmatriculaById), new { id = matricula.id }, matricula);
        }

        [HttpPut]
        [Route("actualizar/{id}")]
        public async Task<IActionResult> Putmatricula(int id, [FromBody] MatriculaModel matricula)
        {
            if (id != matricula.id)
            {
                return BadRequest();
            }

            _context.Entry(matricula).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Matricula.Any(e => e.id == id))
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
        public async Task<IActionResult> Deletematricula(int id)
        {
            var matricula = await _context.Matricula.FindAsync(id);
            if (matricula == null)
            {
                return NotFound();
            }

            _context.Matricula.Remove(matricula);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}
