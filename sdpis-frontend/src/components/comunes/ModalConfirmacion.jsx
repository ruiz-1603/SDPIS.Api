import { useEffect } from 'react';
import { createPortal } from 'react-dom';

// visible: boolean
// mensaje: string
// onConfirmar: () => void
// onCancelar: () => void
export function ModalConfirmacion({
    visible,
    titulo = 'Confirmar acción',
    mensaje,
    textoConfirmar = 'Sí, continuar',
    textoCancelar = 'Cancelar',
    onConfirmar,
    onCancelar,
}) {
    useEffect(() => {
        if (!visible) return undefined;
        function manejarTecla(evento) {
            if (evento.key === 'Escape') onCancelar?.();
        }
        document.addEventListener('keydown', manejarTecla);
        return () => document.removeEventListener('keydown', manejarTecla);
    }, [visible, onCancelar]);

    if (!visible) return null;

    return createPortal(
        <div className="modal-overlay" role="dialog" aria-modal="true" aria-labelledby="tituloModalConfirmacion">
            <div className="modal-card">
                <div className="modal-header">
                    <h2 id="tituloModalConfirmacion">{titulo}</h2>
                    <button type="button" className="modal-close" onClick={onCancelar} aria-label="Cerrar">
                        &times;
                    </button>
                </div>

                <p className="sub">{mensaje}</p>

                <div className="modal-actions">
                    <button type="button" className="btn-secondary" onClick={onCancelar}>
                        {textoCancelar}
                    </button>
                    <button type="button" className="btn-danger" onClick={onConfirmar}>
                        {textoConfirmar}
                    </button>
                </div>
            </div>
        </div>,
        document.body
    );
}