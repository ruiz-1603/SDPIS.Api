import { useState } from 'react';

// numeroDenuncia: string generado por el backend (HU-005)
// denunciante: { tipoTramite: 'anonima' | 'confidencial', correo, ... } (HU-002)
// onVolverAlInicio: callback para reiniciar el formulario y regresar al inicio
export function ConfirmacionDenuncia({ numeroDenuncia, denunciante, onVolverAlInicio }) {
    const [copiado, setCopiado] = useState(false);

    const esAnonima = denunciante?.tipoTramite === 'anonima';
    const correo = denunciante?.correo?.trim();
    // Solo tiene sentido ofrecer notificar por correo si no es anónima (en
    // anónima no se solicitan datos de contacto, ver SeccionDenunciante).
    const tieneCorreo = !esAnonima && Boolean(correo);

    async function copiarNumero() {
        try {
            await navigator.clipboard.writeText(numeroDenuncia);
            setCopiado(true);
            setTimeout(() => setCopiado(false), 2000);
        } catch {
            // Si el navegador bloquea el portapapeles, no interrumpimos el flujo.
        }
    }

    return (
        <div className="main-publico">
            <div className="card">
                <div className="card-body confirmacion-denuncia__body">
                    <div className="confirmacion-denuncia__icono" aria-hidden="true">
                        <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M5 13l4 4L19 7"
                                stroke="currentColor"
                                strokeWidth="2.5"
                                strokeLinecap="round"
                                strokeLinejoin="round"
                            />
                        </svg>
                    </div>

                    <h2>Denuncia registrada con éxito</h2>

                    {esAnonima ? (
                        <p className="confirmacion-denuncia__texto confirmacion-denuncia__texto--grande">
                            Su denuncia anónima fue recibida por el Ministerio de Salud. Al no haberse registrado datos personales,
                            no es posible entregarle un número de seguimiento ni informarle sobre el avance del caso.
                        </p>
                    ) : (
                        <>
                            <p className="confirmacion-denuncia__texto">
                                Su denuncia fue recibida por el Ministerio de Salud.{' '}
                                <strong>SE RECOMIENDA GUARDAR EL NÚMERO DE DENUNCIA PARA CONSULTA.</strong>
                            </p>

                            <div className="confirmacion-denuncia__numero">
                                <span className="confirmacion-denuncia__numero-etiqueta">Número de denuncia</span>
                                <span className="confirmacion-denuncia__numero-valor">{numeroDenuncia}</span>
                                <button type="button" className="btn-secondary confirmacion-denuncia__copiar" onClick={copiarNumero}>
                                    {copiado ? 'Copiado ✓' : 'Copiar número'}
                                </button>
                            </div>

                            {tieneCorreo && (
                                <div className="banner-info confirmacion-denuncia__banner-correo">
                                    <span aria-hidden="true">ℹ️</span>
                                    <span>
                                        Se le estará informando al correo <strong>{correo}</strong> sobre el avance de su denuncia.
                                    </span>
                                </div>
                            )}
                        </>
                    )}

                    <button type="button" className="btn-primary confirmacion-denuncia__volver" onClick={onVolverAlInicio}>
                        Volver al inicio
                    </button>
                </div>
            </div>
        </div>
    );
}