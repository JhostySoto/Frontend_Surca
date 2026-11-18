# Frontend_Surca

App móvil de Surca (Flutter): productores de Loja publican su catálogo y los compradores hacen pedidos, sin intermediarios.

**Tecnologías:** Flutter · Dart · Material 3 · SQLite (solo caché del catálogo)

## Cómo correrlo

Necesitas Flutter instalado y un Android con la depuración USB activa.

```bash
flutter pub get
flutter run            # con el Android conectado
flutter test
flutter analyze
```

## Estructura

```
lib/
  main.dart        rutas nombradas y tema
  screens/         una pantalla por archivo
  widgets/         piezas reutilizables (botones, logo)
  theme/           colores y estilo
```

Hasta ahora está hecha la portada: splash y bienvenida, con "Soy productor" y "Quiero comprar" llevando a una pantalla de marcador.

Los diseños de las pantallas están en Figma (todavía sin nombre definitivo en el archivo).
