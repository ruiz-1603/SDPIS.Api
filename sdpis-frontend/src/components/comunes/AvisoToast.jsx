// aviso: { texto: string, tipo: 'exito' | 'error' | 'aviso' } | null
// Ver hook useAvisoToast, que administra este estado.
export function AvisoToast({ aviso }) {
  return (
    <div
      className={`toast${aviso ? ` show ${aviso.tipo}` : ''}`}
      role="status"
      aria-live="polite"
    >
      {aviso?.texto}
    </div>
  );
}