# toktik_app

Clon de TikTok hecho con Flutter, como práctica de un feed vertical de videos con scroll infinito y reproducción automática. Organizado siguiendo una estructura por capas (domain / infrastructure / presentation).

## Características

- Feed vertical de videos a pantalla completa con scroll tipo TikTok (`PageView`).
- Reproducción automática del video visible y pausa del resto.
- Botones de interacción (like, comentarios, compartir) con contadores formateados de forma legible (p. ej. `1.2K`, `3.4M`).
- Carga paginada simulada de videos (`DiscoverProvider.loadNextPage`).
- Gestión de estado con [`provider`](https://pub.dev/packages/provider).
- Animaciones con [`animate_do`](https://pub.dev/packages/animate_do).
- Reproducción de video con [`video_player`](https://pub.dev/packages/video_player).

## Estructura

```
lib/
├── config/
│   ├── helpers/          # Utilidades (formato de números, etc.)
│   └── theme/             # Tema de la app
├── domain/
│   └── entities/          # Entidades de dominio (VideoPost)
├── infrastructure/
│   └── models/            # Modelos y mapeo desde datos locales
├── presentation/
│   ├── providers/          # Estado (DiscoverProvider)
│   ├── screens/            # Pantallas (Discover)
│   └── widgets/            # Widgets compartidos y de video
├── shared/
│   └── data/               # Fuente de datos local (videos de prueba)
└── main.dart

assets/
└── videos/                 # Videos locales usados como datos de prueba
```

## Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Un emulador/dispositivo Android o iOS, o un navegador para ejecutar en modo web

## Cómo correr la app

```bash
flutter pub get
flutter run
```
