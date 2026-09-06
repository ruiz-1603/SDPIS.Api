import { CampoCondicional } from '../../../components/comunes/CampoCondicional';

// datos: { descripcion, presentadaOtraInstitucion, detalleOtraInstitucion,
//          presentadaMinisterioPrevio, detallePrevioMinisterio }
// onChange: (nuevosDatos) => void
// errores: { descripcion? } (mensaje a mostrar, opcional)
export function SeccionHecho({ datos, onChange, errores = {} }) {
  return (
    <div className="card">
      <div className="card-head">
        <div className="num">2</div>
        <div>
          <h3>Descripción del hecho</h3>
          <div className="subtitulo">Describa cronológicamente la problemática denunciada</div>
        </div>
      </div>
      <div className="card-body">
              <div className={`field${errores.nombreEstablecimiento ? ' error' : ''}`}>
                  <label>
                      Nombre del establecimiento o persona a denunciar<span className="req">*</span>
                  </label>
                  <input
                      type="text"
                      value={datos.nombreEstablecimiento}
                      onChange={(e) => onChange({ ...datos, nombreEstablecimiento: e.target.value })}
                  />
                  {!errores.nombreEstablecimiento && (
                      <div className="help">Mínimo 3 caracteres.</div>
                  )}
                  {errores.nombreEstablecimiento && <div className="error-msg">{errores.nombreEstablecimiento}</div>}
              </div>

              <div className={`field${errores.descripcion ? ' error' : ''}`}>
                  <label>
                      Descripción cronológica<span className="req">*</span>
                  </label>
                  <textarea
                      value={datos.descripcion}
                      onChange={(e) => onChange({ ...datos, descripcion: e.target.value })}
                      placeholder="Relate los hechos en orden cronológico"
                  />
                  {!errores.descripcion && (
                      <div className="help">Mínimo 10 caracteres. Evite dejar solo signos de puntuación.</div>
                  )}
                  {errores.descripcion && <div className="error-msg">{errores.descripcion}</div>}
              </div>

        <div className="row2">
          <div className="field">
            <label>¿Ha presentado esta denuncia en otra institución?</label>
            <div className="toggle-group">
              {['Sí', 'No'].map((opcion) => (
                <button
                  type="button"
                  key={opcion}
                  className={`toggle-btn${
                    datos.presentadaOtraInstitucion === opcion ? ` selected ${opcion === 'Sí' ? 'si' : 'no'}` : ''
                  }`}
                  onClick={() => onChange({ ...datos, presentadaOtraInstitucion: opcion })}
                >
                  {opcion}
                </button>
              ))}
            </div>
          </div>

          <div className="field">
            <label>¿La ha presentado antes en el Ministerio de Salud?</label>
            <div className="toggle-group">
              {['Sí', 'No'].map((opcion) => (
                <button
                  type="button"
                  key={opcion}
                  className={`toggle-btn${
                    datos.presentadaMinisterioPrevio === opcion ? ` selected ${opcion === 'Sí' ? 'si' : 'no'}` : ''
                  }`}
                  onClick={() => onChange({ ...datos, presentadaMinisterioPrevio: opcion })}
                >
                  {opcion}
                </button>
              ))}
            </div>
          </div>
        </div>

        <CampoCondicional
          mostrar={datos.presentadaOtraInstitucion === 'Sí'}
          etiqueta="¿En qué institución y cuándo la presentó?"
          valor={datos.detalleOtraInstitucion}
          onChange={(valor) => onChange({ ...datos, detalleOtraInstitucion: valor })}
          placeholder="Indique la institución y, si lo recuerda, la fecha"
        />

        <CampoCondicional
          mostrar={datos.presentadaMinisterioPrevio === 'Sí'}
          etiqueta="¿Cuándo y en qué oficina del Ministerio?"
          valor={datos.detallePrevioMinisterio}
          onChange={(valor) => onChange({ ...datos, detallePrevioMinisterio: valor })}
          placeholder="Indique la fecha y la oficina, si lo recuerda"
        />
      </div>
    </div>
  );
}