using Interface;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Models;
using Sentry;
using System;
using System.Collections.Generic;
using System.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WepApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientesController : ControllerBase
    {
        private readonly IClienteImpuesto _service;
        private readonly IDbConnection _dbConnection;
      

        private readonly ILogger<ClientesController> _logger;

        public ClientesController(IClienteImpuesto lugar, IDbConnection dbConnection, ILogger<ClientesController> logger)
        {
            this._service = lugar;
            this._dbConnection = dbConnection;
            _logger = logger;
        }
        // GET: api/<ClientesImpuestosController>
        [HttpGet]
        public List<ClienteImpuesto> Get()
        {
              // Do the work that gets measured.
                
            try
            {
                return _service.GetClientes(_dbConnection);
            }
            catch (Exception ex)
            {
                _logger.LogError(message: "Error");
                _logger.LogError(ex, "Error Message");
               
                throw;
            }

        }

    }
}
