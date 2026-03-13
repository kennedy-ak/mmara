# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this repository.

## Repository Overview

**MMara** is an AI-powered legal first-aid assistant for Ghanaians. This is the **Flutter mobile app** (Android + iOS). The full system consists of:

- `mmara-backend/` - FastAPI multi-agent RAG system (sibling directory)
- `mmara/` - **This Flutter mobile app**
- `mmara-client/` - Next.js web admin panel (sibling directory)

---

## Common Commands

```bash
# Install dependencies
flutter pub get

# Run code generation (for freezed, json_serializable, riverpod)
# REQUIRED after modifying any models or providers
dart run build_runner build

# Delete generated code before regenerating (if needed)
dart run build_runner build --delete-conflicting-outputs

# Run on device/emulator
flutter run

# Run with verbose logging
flutter run -v

# Build for release
flutter build apk           # Android
flutter build ios           # iOS

# Run tests
flutter test

# Run specific test file
flutter test test/widget_test.dart
```

---

## Architecture

### Data Flow Pattern

```
Screen (UI) → Provider (Riverpod) → Repository → Service → Dio → Backend API
```

- **Screens** - Pure UI, use `ref.watch` for state, `ref.read` for one-time reads
- **Providers** - Riverpod `AsyncNotifier`, `Notifier`, `FutureProvider` for state
- **Repositories** - Single source of truth, combine API calls + secure storage
- **Services** - Stateless, 1:1 with backend API endpoint groups
- **Dio + Interceptors** - Bearer token attachment, 401 auto-refresh, logging

### Key Providers

| Provider | Purpose | Note |
|----------|---------|------|
| `authStateProvider` | Auth status (loading/authenticated/unauthenticated) | `@Riverpod(keepAlive: true)` |
| `currentSessionIdProvider` | Current chat session ID | `@Riverpod(keepAlive: true)` - prevents state loss between messages |
| `chatMessagesProvider` | List of chat messages | Auto-disposes |
| `streamingChatProvider` | Streaming chat state | Auto-disposes |
| `goRouterProvider` | GoRouter with auth guards | Listens to authStateProvider |

### Riverpod Code Generation

After modifying any `@riverpod` or `@Riverpod` annotated classes:
```bash
dart run build_runner build
```

**Critical**: Use `@Riverpod(keepAlive: true)` for providers that must persist when screens navigate away (e.g., `AuthState`, `CurrentSessionId`). Without this, state is lost on auto-dispose.

### Navigation

GoRouter with auth guards in `lib/providers/router_provider.dart`:

```
[Splash] → [Login] OR [Chat] (if authenticated)
Chat bottom nav: Chat (new) | History | Profile
```

Protected routes automatically redirect to login if unauthenticated.

---

## API Configuration

### Base URLs

- **Android emulator**: `http://10.0.2.2:8004` (configured in `lib/config/app_config.dart`)
- **iOS simulator**: `http://localhost:8000` (commented, swap if needed)
- **Production**: Must use HTTPS

### Key Endpoints

| Endpoint | Purpose |
|----------|---------|
| `POST /api/v1/auth/login/json` | Login (JSON format, not OAuth2 form) |
| `POST /api/v1/auth/register` | Register |
| `POST /api/v1/auth/refresh` | Refresh access token |
| `GET /api/v1/auth/me` | Get current user (NOT `/api/v1/users/me`) |
| `POST /api/v1/chat/query` | Send chat message |
| `WS /api/v1/chat/stream` | Streaming chat responses |
| `POST /api/v1/chat/feedback` | Submit feedback |

### Auth Interceptor

`lib/services/api/auth_interceptor.dart`:
- Attaches Bearer token to all requests
- Auto-refreshes on 401 responses
- Prevents concurrent refresh attempts with lock
- Clears tokens and redirects to login on refresh failure

---

## Models

### Freezed Models

All models use `freezed` for immutability and code generation:
- `lib/models/user.dart` - User, UserCreate, UserLogin
- `lib/models/token.dart` - Token response
- `lib/models/chat_request.dart` - Chat request
- `lib/models/chat_response.dart` - Chat response with citations
- `lib/models/chat_history.dart` - Chat session and message history

After modifying models, run:
```bash
dart run build_runner build
```

---

## Firebase Integration

### Push Notifications

`lib/services/push_notification_service.dart` - Singleton service for FCM:
- Currently commented out in `main.dart` (needs Firebase config)
- Handles foreground/background messages
- Local notifications for Android foreground
- Topic subscription/unsubscription

**To enable**: Uncomment Firebase initialization in `lib/main.dart`

---

## Important Notes

### Session Management

The `currentSessionIdProvider` persists the session ID to maintain conversation context between messages. It:
1. Stores session ID in memory via Riverpod state
2. Persists to SharedPreferences for app restarts
3. Uses `@Riverpod(keepAlive: true)` to prevent auto-disposal

### Hot Reload vs Hot Restart

- **Hot reload** (`r`): Preserves app state, good for UI changes
- **Hot restart** (`R`): Clears all state, needed for provider changes

After code generation (`build_runner`), a hot restart is usually required.

### Password Validation

Requirements (enforced by backend):
- 8+ characters
- At least one uppercase letter
- At least one lowercase letter
- At least one digit

### Streaming Chat

The app supports WebSocket streaming for real-time AI responses:
- `lib/services/chat_service.dart` - `sendMessageStream()` method
- `StreamingChat` provider manages streaming state
- States: `idle` → `streaming(content)` → `complete(response)` or `error`

---

## Project Structure

```
lib/
├── config/              # App configuration
│   ├── app_config.dart  # API URLs, timeouts, feature flags
│   └── env.dart         # Environment enum
├── models/              # Freezed models (with .g.dart generated files)
├── providers/           # Riverpod providers (with .g.dart generated files)
│   ├── api_client_provider.dart
│   ├── auth_provider.dart
│   ├── chat_provider.dart
│   ├── router_provider.dart
│   └── user_provider.dart
├── repositories/        # Data layer (API + storage)
│   ├── auth_repository.dart
│   ├── chat_repository.dart
│   └── user_repository.dart
├── router/
│   └── routes.dart      # Route constants and helpers
├── screens/             # UI screens
│   ├── auth/            # Login, register, password reset
│   ├── chat/            # Chat screen, history
│   ├── profile/         # Profile, edit, change password
│   ├── settings/        # Settings
│   └── splash/          # Splash screen
├── services/
│   ├── api/             # API client, auth interceptor, exceptions
│   ├── auth_service.dart
│   ├── chat_service.dart
│   ├── push_notification_service.dart
│   ├── secure_storage_service.dart
│   └── user_service.dart
├── theme/               # App theming
├── widgets/             # Reusable widgets
├── app.dart             # MaterialApp.router wrapper
└── main.dart            # Entry point (Firebase init)
```

---

## Related Files

- `../mmara-backend/` - FastAPI backend with multi-agent RAG system
- `../mmara-client/` - Next.js web admin panel
- `../CLAUDE.md` - Parent project documentation
