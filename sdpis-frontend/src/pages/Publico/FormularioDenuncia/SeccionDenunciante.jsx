// datos: { tipoTramite: 'normal' | 'anonima' | 'confidencial',
//          nombreCompleto, numeroIdentificacion, direccionDomicilio, correo, telefono }
// onChange: (nuevosDatos) => void
// errores: { nombreCompleto?, numeroIdentificacion? } (mensajes a mostrar, opcional)
export function SeccionDenunciante({ datos, onChange, errores = {} }) {
  const esAnonima = datos.tipoTramite === 'anonima';
  const esConfidencial = datos.tipoTramite === 'confidencial';

  function seleccionarTramite(tipoTramite) {
    onChange({ ...datos, tipoTramite });
  }

  return (
    <div className="card">
      <div className="card-head">
        <div className="num">4</div>
        <div>
          <h3>Datos del denunciante</h3>
          <div className="subtitulo">Seleccione cómo desea presentar la denuncia</div>
        </div>
      </div>
      <div className="card-body">
        <div className="tramite-options">
          <div
            className={`tramite-card${!esAnonima && !esConfidencial ? ' selected' : ''}`}
            onClick={() => seleccionarTramite('normal')}
          >
            <div className="radio-dot" />
            <h3>Denuncia identificada</h3>
            <p>Registra sus datos de contacto para dar seguimiento al caso.</p>
          </div>

          <div className={`tramite-card${esConfidencial ? ' selected' : ''}`} onClick={() => seleccionarTramite('confidencial')}>
            <div className="radio-dot" />
            <h3>Denuncia confidencial</h3>
            <p>Su identidad queda protegida y no es visible para el establecimiento denunciado.</p>
          </div>

          <div className={`tramite-card${esAnonima ? ' selected' : ''}`} onClick={() => seleccionarTramite('anonima')}>
            <div className="radio-dot" />
            <h3>Denuncia anónima</h3>
            <p>No se solicita ningún dato personal del denunciante.</p>
          </div>
        </div>

        {/* Heurística 10 (Ayuda y documentación): aclara la diferencia justo
            en el momento en que la persona debe decidir entre las opciones. */}
        <div className="banner-info">
          <span aria-hidden="true">ℹ️</span>
          <span>
            <strong>¿Cuál es la diferencia?</strong> En la denuncia <strong>confidencial</strong>, el Ministerio
            conoce su identidad para darle seguimiento al caso, pero nunca la revela al establecimiento denunciado.
            En la denuncia <strong>anónima</strong> no se solicita ningún dato personal, por lo que no será posible
            contactarla ni informarle sobre el avance del caso.
          </span>
        </div>

        {!esAnonima && (
          <div className="conditional-box">
            <div className="row2">
              <div className={`field${errores.nombreCompleto ? ' error' : ''}`}>
                <label>
                  Nombre completo{esConfidencial && <span className="req">*</span>}
                </label>
                <input
                  type="text"
                  value={datos.nombreCompleto}
                  onChange={(e) => onChange({ ...datos, nombreCompleto: e.target.value })}
                />
                {errores.nombreCompleto && <div className="error-msg">{errores.nombreCompleto}</div>}
              </div>
              <div className={`field${errores.numeroIdentificacion ? ' error' : ''}`}>
                <label>
                  Número de identificación{esConfidencial && <span className="req">*</span>}
                </label>
                <input
                  type="text"
                  value={datos.numeroIdentificacion}
                  onChange={(e) => onChange({ ...datos, numeroIdentificacion: e.target.value })}
                />
                {errores.numeroIdentificacion && <div className="error-msg">{errores.numeroIdentificacion}</div>}
              </div>
            </div>

            <div className="field">
              <label>
                Dirección del domicilio<span className="opt">(opcional)</span>
              </label>
              <input
                type="text"
                value={datos.direccionDomicilio}
                onChange={(e) => onChange({ ...datos, direccionDomicilio: e.target.value })}
              />
            </div>

            <div className="row2">
              <div className="field">
                <label>
                  Correo electrónico<span className="opt">(opcional)</span>
                </label>
                <input type="email" value={datos.correo} onChange={(e) => onChange({ ...datos, correo: e.target.value })} />
                <div className="help">Si no lo indica, entendemos que no desea recibir notificaciones.</div>
              </div>
              <div className="field">
                <label>
                  Teléfono<span className="opt">(opcional)</span>
                </label>
                <input type="tel" value={datos.telefono} onChange={(e) => onChange({ ...datos, telefono: e.target.value })} />
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
