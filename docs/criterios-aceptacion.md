# Criterios de aceptación

Cada historia tiene un caso de flujo normal, uno de excepción, uno de límite y uno no funcional.

## HU-01: registro e inicio de sesión

| Tipo | Dado / Cuando / Entonces |
|---|---|
| Flujo normal | **Dado** una persona sin cuenta, **cuando** completa nombre, correo, contraseña y rol y acepta el aviso de datos personales, **entonces** se crea la cuenta e inicia sesión. |
| Excepción | **Dado** un correo que ya está registrado, **cuando** intenta registrarse, **entonces** la app dice que ese correo ya existe y no crea otra cuenta. |
| Excepción | **Dado** una contraseña incorrecta, **cuando** inicia sesión, **entonces** ve un mensaje de error sin revelar si el correo existe. |
| Límite | **Dado** una contraseña de menos de 8 caracteres, **cuando** intenta registrarse, **entonces** la app la rechaza y explica el mínimo. |
| No funcional | Las contraseñas se guardan con hash y las peticiones de acceso van por HTTPS (RNF-02). El consentimiento queda registrado (RNF-04). |

## HU-02: publicar un producto

| Tipo | Dado / Cuando / Entonces |
|---|---|
| Flujo normal | **Dado** un productor con sesión iniciada, **cuando** llena nombre, categoría, precio por unidad y cantidad y pulsa publicar, **entonces** el producto se guarda y aparece en su catálogo. |
| Excepción | **Dado** un campo obligatorio vacío, **cuando** pulsa publicar, **entonces** la app marca el campo y no envía nada. |
| Excepción | **Dado** que no hay conexión, **cuando** pulsa publicar, **entonces** la app avisa que necesita internet y no pierde lo que escribió. |
| Límite | **Dado** un precio de 0 o negativo, o una cantidad negativa, **cuando** intenta publicar, **entonces** se rechaza. La cantidad 0 sí se acepta (producto agotado). |
| No funcional | Un productor nuevo publica su primer producto en menos de 3 minutos sin ayuda (RNF-03). |

## HU-03: catálogo con filtro

| Tipo | Dado / Cuando / Entonces |
|---|---|
| Flujo normal | **Dado** un comprador con conexión, **cuando** abre el catálogo y elige una categoría, **entonces** ve solo los productos de esa categoría. |
| Excepción | **Dado** que se cae la red, **cuando** abre el catálogo, **entonces** ve el último catálogo descargado con un aviso de que está sin conexión. |
| Límite | **Dado** una categoría sin productos, **cuando** la elige, **entonces** ve un mensaje de lista vacía, no una pantalla en blanco. |
| No funcional | El catálogo carga en menos de 3 segundos en el percentil 95 (RNF-01). |

## HU-04: pedido con conexión

| Tipo | Dado / Cuando / Entonces |
|---|---|
| Flujo normal | **Dado** un comprador con conexión, **cuando** elige un producto y una cantidad y confirma, **entonces** el pedido se guarda y ve la confirmación. |
| Excepción | **Dado** que la app envía el mismo pedido dos veces, **cuando** el servidor recibe ambos, **entonces** guarda uno solo y devuelve el ya guardado. |
| Límite | **Dado** una cantidad mayor a la disponible, **cuando** confirma, **entonces** el pedido se rechaza y se indica cuánto hay. |
| No funcional | Una prueba automática demuestra que enviar el mismo pedido dos veces crea un solo pedido. |
