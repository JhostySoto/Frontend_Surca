# Backlog priorizado

Ordenado de mayor a menor prioridad. Prioridad con MoSCoW. Las horas son del sprint 1 y vienen del plan; las demás se estiman en la planificación de su sprint.

## Historias de usuario

| ID | Historia | Prioridad | Sprint | Estimación |
|---|---|---|---|---|
| HU-01 | Como persona nueva, quiero registrarme como productor o comprador e iniciar sesión, para usar Surca con mi cuenta. | Debe | 1 | 24 h |
| HU-02 | Como productor, quiero publicar un producto con nombre, categoría, precio y cantidad, para que los compradores lo vean. | Debe | 1 | 21 h |
| HU-00 | Como persona que abre la app, quiero ver una portada con el logo y dos caminos claros, para entrar sin dar vueltas. | Debe | 1 | 5 h |
| HU-03 | Como comprador, quiero ver el catálogo y filtrarlo por categoría, para encontrar lo que busco. Sin conexión quiero ver el último catálogo. | Debe | 2 | Por estimar |
| HU-04 | Como comprador, quiero hacer un pedido con conexión, para recibir el producto sin intermediarios. | Debe | 2 | Por estimar |
| HU-05 | Como productor, quiero ver los pedidos que recibí, para prepararlos. | Debería | 3 | Por estimar |
| HU-06 | Como productor, quiero ver la demanda estimada de las próximas dos semanas, para saber si tendré producto suficiente. | Debería | 3 | Por estimar |
| HU-07 | Como usuario, quiero ver y editar mi perfil, para mantener mis datos al día. | Podría | 3 | Por estimar |
| HU-08 | Como productor, quiero recibir una notificación cuando llegue un pedido, para responder rápido. | Podría | Opcional | Por estimar |

## Tareas técnicas (no son historias de usuario)

| ID | Tarea | Sprint | Estimación |
|---|---|---|---|
| T-01 | Repositorios, estructura y tubería | 1 | 6 h |
| T-02 | Prueba en un Android físico | 1 | 4 h |

## Revisión INVEST de las historias del sprint 1

| Historia | Independiente | Negociable | Valiosa | Estimable | Pequeña | Probable |
|---|---|---|---|---|---|---|
| HU-01 | Sí | Sí | Sí | Sí | Cabe en el sprint | Sí, con criterios |
| HU-02 | Depende de HU-01 (hay que estar autenticado) | Sí | Sí | Sí | Cabe en el sprint | Sí, con criterios |
| HU-00 | Sí | Sí | Sí | Sí | Sí | Sí |

HU-02 depende de HU-01, por eso HU-01 va primero en el sprint.
