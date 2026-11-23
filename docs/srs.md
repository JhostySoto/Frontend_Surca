# SRS: especificación de requisitos de Surca

Prioridad con MoSCoW: **Debe**, **Debería**, **Podría**. "Sprint" indica cuándo se planea construir.

## Requisitos funcionales

| ID | Requisito | Prioridad | Sprint |
|---|---|---|---|
| RF-01 | Un productor autenticado puede publicar un producto con nombre, categoría (hortalizas, tubérculos, cereales, frutas, lácteos u otros), precio por unidad y cantidad disponible. | Debe | 1 |
| RF-02 | Un comprador puede ver el catálogo y filtrarlo por categoría. Sin conexión ve el último catálogo descargado. | Debe | 2 |
| RF-03 | Un comprador con conexión puede hacer un pedido. El servidor lo guarda una sola vez aunque la app lo envíe dos veces. | Debe | 2 |
| RF-04 | Una persona puede registrarse como productor o comprador e iniciar sesión con correo y contraseña. | Debe | 1 |
| RF-05 | El productor puede ver los pedidos que recibió y su estado. | Debería | 3 |
| RF-06 | El productor puede ver la estimación de demanda de un producto para las próximas dos semanas, marcada como basada en datos simulados. | Debería | 3 |
| RF-07 | La persona puede ver y editar los datos básicos de su perfil. | Podría | 3 |
| RF-08 | La app avisa con notificaciones cuando llega un pedido (Firebase). | Podría | Opcional |

## Requisitos no funcionales

| ID | Requisito | Clase | Métrica y umbral | Prioridad |
|---|---|---|---|---|
| RNF-01 | El catálogo carga rápido. | Rendimiento | Menos de 3 segundos en el percentil 95 con 100 usuarios al mismo tiempo | Debe |
| RNF-02 | La comunicación es segura. | Seguridad | 100 % del tráfico por HTTPS y 100 % de las contraseñas guardadas con hash seguro | Debe |
| RNF-03 | La app es simple de usar. | Usabilidad | Un productor nuevo publica su primer producto en menos de 3 minutos y sin ayuda, en una prueba con al menos 3 personas | Debe |
| RNF-04 | Los datos personales se tratan según la LOPDP. | Privacidad | 100 % de las cuentas nuevas registran su consentimiento antes de guardar datos | Debe |
| RNF-05 | Todo dato simulado se identifica como tal. | Transparencia | 100 % de las pantallas con datos de ejemplo o de estimación muestran la etiqueta "simulados" | Debe |
| RNF-06 | La API está documentada. | Mantenibilidad | 100 % de los endpoints en el archivo OpenAPI, con métodos, parámetros, respuestas y códigos HTTP | Debería |

## Fuera del semestre

Delivery, pagos reales, facturación SRI, transporte, certificación orgánica y pedidos sin conexión con sincronización.
