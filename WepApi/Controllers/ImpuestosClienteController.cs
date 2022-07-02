using Interface;
using Microsoft.AspNetCore.Mvc;
using Models;
using System.Collections.Generic;
using System.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WepApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ImpuestosClienteController : ControllerBase
    {
        private readonly ICalculos _service;
        private readonly IDbConnection _dbConnection;
        public ImpuestosClienteController(ICalculos calculos, IDbConnection dbConnection)
        {
            this._service = calculos;
            this._dbConnection = dbConnection;
        }
        // GET: api/<ImpuestosClienteController>
        [HttpPost("CalculoISR")]
        public List<CalculoCliente> Post(int id_cliente)
        {
            return _service.calcularISR(_dbConnection, id_cliente);
        }

        [HttpPost("CalculoIva")]
        public List<CalculoCliente> PostIva(int id_cliente)
        {
            return _service.calcularIVA(_dbConnection, id_cliente);
        }
    }
}
