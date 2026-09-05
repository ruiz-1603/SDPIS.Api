const ETIQUETA_TRAMITE = {
  normal: 'Denuncia identificada',
  confidencial: 'Denuncia confidencial',
  anonima: 'Denuncia anónima',
};

// Muestra "—" en vez de dejar un valor vacío en blanco, para que quede claro
// que el campo fue revisado y simplemente no se llenó (heurística 1).
function valorOGuion(valor) {
  return valor ? valor : '—';
}

// estado: el mismo objeto de estado que maneja useFormularioDenuncia
// distritoAplica: boolean — si el cantón seleccionado tiene distritos
// onEditarPaso: (numeroPaso) => void — navega directamente a esa sección
export function SeccionRevision({ estado, distritoAplica, onEditarPaso }) {
  const { ubicacion, hecho, productos, denunciante } = estado;
  const esAnonima = denunciante.tipoTramite === 'anonima';

  return (
    <>
      <div className="card">
        <div className="card-head">
          <div className="num">1</div>
          <div>
            <h3>Ubicación y hecho denunciado</h3>
            <div className="subtitulo">Datos ingresados en el paso 1</div>
          </div>
          <button
            type="button"
            className="btn-editar-seccion card-head-acciones"
            onClick={() => onEditarPaso(1)}
          >
            Editar
          </button>
        </div>
        <div className="card-body">
          <dl className="resumen-lista">
            <dt>Provincia</dt>
            <dd>{valorOGuion(ubicacion.provincia)}</dd>
            <dt>Cantón</dt>
            <dd>{valorOGuion(ubicacion.canton)}</dd>
            {distritoAplica && (
              <>
                <dt>Distrito</dt>
                <dd>{valorOGuion(ubicacion.distrito)}</dd>
              </>
            )}
            <dt>Dirección exacta</dt>
            <dd>{valorOGuion(ubicacion.direccionExacta)}</dd>
            <dt>Descripción cronológica</dt>
            <dd>{valorOGuion(hecho.descripcion)}</dd>
            <dt>¿Denunciado en otra institución?</dt>
            <dd>
              {valorOGuion(hecho.presentadaOtraInstitucion)}
              {hecho.presentadaOtraInstitucion === 'Sí' && hecho.detalleOtraInstitucion
                ? ` — ${hecho.detalleOtraInstitucion}`
                : ''}
            </dd>
            <dt>¿Presentada antes en el Ministerio?</dt>
            <dd>
              {valorOGuion(hecho.presentadaMinisterioPrevio)}
              {hecho.presentadaMinisterioPrevio === 'Sí' && hecho.detallePrevioMinisterio
                ? ` — ${hecho.detallePrevioMinisterio}`
                : ''}
            </dd>
          </dl>
        </div>
      </div>

      <div className="card">
        <div className="card-head">
          <div className="num">2</div>
          <div>
            <h3>Producto(s) denunciado(s)</h3>
            <div className="subtitulo">
              {productos.length} producto{productos.length !== 1 ? 's' : ''} registrado
              {productos.length !== 1 ? 's' : ''}
            </div>
          </div>
          <button
            type="button"
            className="btn-editar-seccion card-head-acciones"
            onClick={() => onEditarPaso(2)}
          >
            Editar
          </button>
        </div>
        <div className="card-body">
          {productos.map((producto, index) => (
            <div key={index} className="resumen-producto">
              <span className="tag">Producto {index + 1}</span>
              <dl className="resumen-lista">
                <dt>Nombre</dt>
                <dd>{valorOGuion(producto.nombre)}</dd>
                <dt>Descripción</dt>
                <dd>{valorOGuion(producto.descripcion)}</dd>
                <dt>Tipo de producto</dt>
                <dd>{valorOGuion(producto.tipoProducto)}</dd>
                <dt>Registro sanitario</dt>
                <dd>{valorOGuion(producto.registroSanitario)}</dd>
                <dt>Marca</dt>
                <dd>{valorOGuion(producto.marca)}</dd>
                <dt>Número de lote</dt>
                <dd>{valorOGuion(producto.lote)}</dd>
                <dt>Fabricante o distribuidor</dt>
                <dd>{valorOGuion(producto.fabricante)}</dd>
                <dt>País de origen</dt>
                <dd>{valorOGuion(producto.paisOrigen)}</dd>
                <dt>Presentación</dt>
                <dd>{valorOGuion(producto.presentacion)}</dd>
                <dt>Fecha de compra</dt>
                <dd>{valorOGuion(producto.fechaCompra)}</dd>
                <dt>Motivo(s) de denuncia</dt>
                <dd>
                  {producto.motivos.length > 0 ? (
                    <ul className="resumen-motivos">
                      {producto.motivos.map((motivo) => (
                        <li key={motivo}>{motivo}</li>
                      ))}
                    </ul>
                  ) : (
                    '—'
                  )}
                </dd>
              </dl>
            </div>
          ))}
        </div>
      </div>

      <div className="card">
        <div className="card-head">
          <div className="num">3</div>
          <div>
            <h3>Datos del denunciante</h3>
            <div className="subtitulo">{ETIQUETA_TRAMITE[denunciante.tipoTramite]}</div>
          </div>
          <button
            type="button"
            className="btn-editar-seccion card-head-acciones"
            onClick={() => onEditarPaso(3)}
          >
            Editar
          </button>
        </div>
        <div className="card-body">
          {esAnonima ? (
            <p>No se solicitó ningún dato personal, ya que la denuncia es anónima.</p>
          ) : (
            <dl className="resumen-lista">
              <dt>Nombre completo</dt>
              <dd>{valorOGuion(denunciante.nombreCompleto)}</dd>
              <dt>Número de identificación</dt>
              <dd>{valorOGuion(denunciante.numeroIdentificacion)}</dd>
              <dt>Dirección del domicilio</dt>
              <dd>{valorOGuion(denunciante.direccionDomicilio)}</dd>
              <dt>Correo electrónico</dt>
              <dd>{valorOGuion(denunciante.correo)}</dd>
              <dt>Teléfono</dt>
              <dd>{valorOGuion(denunciante.telefono)}</dd>
            </dl>
          )}
        </div>
      </div>

      <div className="banner-info">
        <span aria-hidden="true">ℹ️</span>
        <span>
          Verifique que toda la información sea correcta antes de enviar. Puede usar{' '}
          <strong>Editar</strong> en cualquier sección para hacer cambios.
        </span>
      </div>
    </>
  );
}