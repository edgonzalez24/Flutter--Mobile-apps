# Flutter Apps

Carpeta de aplicaciones móviles hechas con [Flutter](https://flutter.dev) como parte de mi aprendizaje del framework. Cada subcarpeta es un proyecto Flutter independiente, generado con `flutter create` y con soporte multiplataforma (Android, iOS, web, escritorio).

## Apps

| App | Descripción |
|---|---|
| [`counter_app`](./counter_app) | App de contador básica (proyecto inicial de Flutter). |
| [`yes_or_no_app`](./yes_or_no_app) | App simple de sí/no. |
| [`toktik_app`](./toktik_app) | Clon de TikTok con feed vertical de videos, gestos de scroll y reproducción automática. |

## Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Un emulador/dispositivo Android o iOS, o un navegador para ejecutar en modo web

## Cómo correr una app

```bash
cd <nombre_de_la_app>
flutter pub get
flutter run
```

## Estructura

Cada app sigue la estructura estándar de un proyecto Flutter:

```
<app>/
├── lib/           # Código fuente (Dart)
├── android/       # Configuración específica de Android
├── ios/           # Configuración específica de iOS
├── web/           # Configuración específica de web
├── test/          # Pruebas
└── pubspec.yaml   # Dependencias y metadata del proyecto
```
