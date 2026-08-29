# yes_or_no_app

App hecha con Flutter que simula un chat: le escribes cualquier pregunta y "ella" te responde con un simple **sí** o **no**, acompañado de una imagen/gif.

## Cómo funciona

- La interfaz es una pantalla de chat (`ChatScreen`) con burbujas de mensaje propias y de la otra persona.
- El estado del chat se maneja con [`provider`](https://pub.dev/packages/provider) a través de `ChatProvider`.
- Al enviar un mensaje, se consulta la API pública [yes-no-wtf](https://yes-no-wtf.vercel.app/api) usando [`dio`](https://pub.dev/packages/dio), que devuelve una respuesta aleatoria de sí/no junto con una imagen.

## Estructura del proyecto

```
lib/
├── config/
│   ├── helpers/         # Lógica para consultar la API de sí/no
│   └── theme/           # Tema de la app
├── domain/
│   └── entities/        # Modelo de mensaje (Message)
├── infrastructure/
│   └── models/          # Modelo de respuesta de la API (YesNoModel)
├── presentation/
│   ├── providers/       # ChatProvider (estado del chat)
│   ├── screens/         # Pantalla de chat
│   └── widgets/         # Burbujas de mensaje y campo de texto
└── main.dart
```

## Dependencias principales

- [`provider`](https://pub.dev/packages/provider) — manejo de estado
- [`dio`](https://pub.dev/packages/dio) — cliente HTTP para consumir la API

## Cómo correr el proyecto

```bash
flutter pub get
flutter run
```

## Recursos de Flutter

- [Aprende Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Escribe tu primera app en Flutter](https://docs.flutter.dev/get-started/codelab)
- [Documentación oficial](https://docs.flutter.dev/)
