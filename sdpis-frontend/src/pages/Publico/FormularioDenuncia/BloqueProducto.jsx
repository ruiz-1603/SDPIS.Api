import { SelectorMotivos } from '../../../components/comunes/SelectorMotivos';

// TODO: reemplazar por el catálogo real de tipo_producto (Base de Datos B02) vía services/
const TIPOS_PRODUCTO = ['Medicamento', 'Cosmético', 'Alimento', 'Dispositivo médico', 'Otro'];

// producto: { nombre, descripcion, registroSanitario, marca, lote, fabricante,
//             paisOrigen, presentacion, fechaCompra, tipoProducto, motivos }
// index: posición del bloque (para el rótulo "Producto N")
// onChange: (productoActualizado) => void
// onEliminar: () => void
// puedeEliminar: boolean (false para el primer producto)
// errores: { nombre?, descripcion?, tipoProducto?, motivos? } (mensajes a mostrar, opcional)
export function BloqueProducto({ producto, index, onChange, onEliminar, puedeEliminar, errores = {} }) {
  function actualizarCampo(campo, valor) {
    onChange({ ...producto, [campo]: valor });
  }

  return (
    <div className="producto-block">
      <div className="producto-block-head">
        <span className="tag">Producto {index + 1}</span>
        {puedeEliminar && (
          <button type="button" className="remove" onClick={onEliminar}>
            Quitar
          </button>
        )}
      </div>

      <div className="producto-block-body">
        <span className="subsection-lbl">Datos del producto</span>

        <div className={`field${errores.nombre ? ' error' : ''}`}>
          <label>
            Nombre del producto<span className="req">*</span>
          </label>
          <input
            type="text"
            value={producto.nombre}
            onChange={(e) => actualizarCampo('nombre', e.target.value)}
          />
          {errores.nombre && <div className="error-msg">{errores.nombre}</div>}
        </div>

        <div className={`field${errores.descripcion ? ' error' : ''}`}>
          <label>
            Descripción<span className="req">*</span>
          </label>
          <textarea
            value={producto.descripcion}
            onChange={(e) => actualizarCampo('descripcion', e.target.value)}
          />
          {errores.descripcion && <div className="error-msg">{errores.descripcion}</div>}
        </div>

        <div className="row2">
          <div className={`field${errores.tipoProducto ? ' error' : ''}`}>
            <label>
              Tipo de producto<span className="req">*</span>
            </label>
            <select value={producto.tipoProducto} onChange={(e) => actualizarCampo('tipoProducto', e.target.value)}>
              <option value="">Seleccione...</option>
              {TIPOS_PRODUCTO.map((tipo) => (
                <option key={tipo} value={tipo}>
                  {tipo}
                </option>
              ))}
            </select>
            {errores.tipoProducto && <div className="error-msg">{errores.tipoProducto}</div>}
          </div>

          <div className="field">
            <label>
              Número de registro sanitario<span className="opt">(opcional)</span>
            </label>
            <input
              type="text"
              value={producto.registroSanitario}
              onChange={(e) => actualizarCampo('registroSanitario', e.target.value)}
            />
          </div>
        </div>

        <div className="row2">
          <div className="field">
            <label>
              Marca<span className="opt">(opcional)</span>
            </label>
            <input type="text" value={producto.marca} onChange={(e) => actualizarCampo('marca', e.target.value)} />
          </div>
          <div className="field">
            <label>
              Número de lote<span className="opt">(opcional)</span>
            </label>
            <input type="text" value={producto.lote} onChange={(e) => actualizarCampo('lote', e.target.value)} />
          </div>
        </div>

        <div className="row2">
          <div className="field">
            <label>
              Fabricante o distribuidor<span className="opt">(opcional)</span>
            </label>
            <input
              type="text"
              value={producto.fabricante}
              onChange={(e) => actualizarCampo('fabricante', e.target.value)}
            />
          </div>
          <div className="field">
            <label>
              País de origen<span className="opt">(opcional)</span>
            </label>
            <input
              type="text"
              value={producto.paisOrigen}
              onChange={(e) => actualizarCampo('paisOrigen', e.target.value)}
            />
          </div>
        </div>

        <div className="row2">
          <div className="field">
            <label>
              Presentación<span className="opt">(opcional)</span>
            </label>
            <input
              type="text"
              placeholder="kg, g, l, ml, gal..."
              value={producto.presentacion}
              onChange={(e) => actualizarCampo('presentacion', e.target.value)}
            />
          </div>
          <div className="field">
            <label>
              Fecha de compra<span className="opt">(opcional)</span>
            </label>
            <input
              type="date"
              value={producto.fechaCompra}
              onChange={(e) => actualizarCampo('fechaCompra', e.target.value)}
            />
          </div>
        </div>

        <div className={`field${errores.motivos ? ' error' : ''}`}>
          <span className="subsection-lbl">
            Motivo(s) de denuncia<span className="req">*</span>
          </span>
          <SelectorMotivos
            motivosSeleccionados={producto.motivos}
            onChange={(motivos) => actualizarCampo('motivos', motivos)}
          />
          {errores.motivos && <div className="error-msg">{errores.motivos}</div>}
        </div>
      </div>
    </div>
  );
}
