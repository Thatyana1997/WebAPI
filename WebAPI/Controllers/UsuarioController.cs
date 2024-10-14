using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.BD;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [Route("api/usuario")]
    [ApiController]
    public class usuarioController : ControllerBase
    {
        private readonly AppDbContext _context;

        public usuarioController(AppDbContext context)
        {
            _context = context; // Si context es null, lanzará un NullReferenceException
        }

        [HttpGet]
        [Route("listar")]
        public async Task<ActionResult<IEnumerable<UsuarioModel>>> Getusuarios()
        {
            return await _context.Usuarios.ToListAsync();
        }

        [HttpGet]
        [Route("obtener/{id}")]
        public async Task<ActionResult<UsuarioModel>> GetusuarioById(int id)
        {
            var usuario = await _context.Usuarios.FindAsync(id);

            if (usuario == null)
            {
                return NotFound();
            }

            return usuario;
        }

        [HttpPost]
        [Route("crear")]
        public async Task<ActionResult<UsuarioModel>> Postusuario([FromBody] UsuarioModel usuario)
        {
            _context.Usuarios.Add(usuario);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetusuarioById), new { id = usuario.id }, usuario);
        }

        [HttpPut]
        [Route("actualizar/{id}")]
        public async Task<IActionResult> Putusuario(int id, [FromBody] UsuarioModel usuario)
        {
            if (id != usuario.id)
            {
                return BadRequest();
            }

            _context.Entry(usuario).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!_context.Usuarios.Any(e => e.id == id))
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
        public async Task<IActionResult> Deleteusuario(int id)
        {
            var usuario = await _context.Usuarios.FindAsync(id);
            if (usuario == null)
            {
                return NotFound();
            }

            _context.Usuarios.Remove(usuario);
            await _context.SaveChangesAsync();

            return NoContent();
        }

    }
}
