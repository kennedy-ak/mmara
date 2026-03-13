# MMara Flutter App — Implementation Plan

## Overview

MMara is an AI-powered legal first-aid assistant for Ghanaians. This plan covers building a Flutter mobile app (Android + iOS) that connects to the existing FastAPI backend.

---

## Architecture

```
Screen (UI) → Provider (Riverpod) → Repository → Service → Dio (HTTP)
```

- **Screens** are pure UI; they `ref.watch` or `ref.read` providers.
- **Providers** hold state via `AsyncNotifier`, `Notifier`, or `FutureProvider`. They call repositories.
- **Repositories** are the single source of truth for a domain. `AuthRepository` combines API calls with secure storage operations.
- **Services** are stateless classes that map 1:1 to API endpoint groups. They accept Dio and return parsed models.
- **Dio + Interceptors** handle cross-cutting concerns: attaching Bearer token, intercepting 401 to auto-refresh, logging.

---

## Project Structure

```
lib/
  main.dart                          # App entry point, ProviderScope, Firebase init
  app.dart                           # MaterialApp.router with GoRouter, theme

  config/
    app_config.dart                  # Base URL, timeouts, feature flags
    env.dart                         # Environment enum (dev/staging/prod)

  theme/
    app_theme.dart                   # ThemeData builder (light + dark)
    app_colors.dart                  # ColorScheme seed, custom extension colors
    app_text_styles.dart             # TextTheme customizations
    app_spacing.dart                 # Edge insets, gaps, radius constants

  router/
    app_router.dart                  # GoRouter definition, redirects, guards
    routes.dart                      # Route path constants

  models/
    user.dart                        # User, UserCreate, UserLogin, UserUpdate
    token.dart                       # Token (access, refresh, expires_in)
    chat_request.dart                # ChatRequest
    chat_response.dart               # ChatResponse
    citation.dart                    # Citation
    chat_history.dart                # ChatHistoryResponse, SessionsListResponse
    chat_feedback.dart               # ChatFeedback
    user_stats.dart                  # UserStats
    password_reset.dart              # PasswordResetRequest/Confirm/Response
    api_error.dart                   # Unified error model

  services/
    api/
      api_client.dart                # Dio instance, interceptors, base config
      auth_interceptor.dart          # Attach Bearer token, auto-refresh on 401
      api_exceptions.dart            # Typed exceptions (Unauthorized, NotFound, etc.)
    auth_service.dart                # register, login, refresh, logout, password ops
    chat_service.dart                # sendMessage, getHistory, getSession, delete, feedback
    user_service.dart                # getProfile, updateProfile, getStats
    push_notification_service.dart   # FCM init, token registration, foreground handling
    secure_storage_service.dart      # flutter_secure_storage wrapper

  repositories/
    auth_repository.dart             # Orchestrates auth_service + secure_storage
    chat_repository.dart             # Thin wrapper over chat_service
    user_repository.dart             # Thin wrapper over user_service

  providers/
    auth_provider.dart               # authStateProvider, currentUserProvider, login/register/logout notifiers
    chat_provider.dart               # chatMessagesProvider, sessionProvider, sendMessageProvider
    chat_history_provider.dart       # sessionsListProvider, sessionDetailProvider
    user_provider.dart               # userProfileProvider, userStatsProvider
    router_provider.dart             # goRouterProvider (depends on auth state)
    api_client_provider.dart         # dioProvider, service providers

  screens/
    splash/
      splash_screen.dart             # Logo + auto-login check
    auth/
      login_screen.dart
      register_screen.dart
      forgot_password_screen.dart
      reset_password_screen.dart     # Deep-link target for token-based reset
    chat/
      chat_screen.dart               # Active conversation
      chat_history_screen.dart       # List of past sessions
    profile/
      profile_screen.dart            # View profile + stats
      edit_profile_screen.dart
      change_password_screen.dart
    settings/
      settings_screen.dart           # About, logout, version info

  widgets/
    chat/
      message_bubble.dart            # User vs AI bubble
      citation_footnote.dart         # Small inline citation text
      typing_indicator.dart          # "MMara is thinking..." dots
      feedback_bottom_sheet.dart     # Star rating + comment
      emergency_banner.dart          # Red banner for is_emergency responses
      disclaimer_text.dart           # Standard legal disclaimer at bottom
    common/
      app_button.dart                # Styled ElevatedButton / OutlinedButton
      app_text_field.dart            # Styled TextFormField with validation
      loading_overlay.dart           # Modal progress indicator
      error_widget.dart              # Retry-able error display
      empty_state.dart               # Illustration + message for empty lists
      app_logo.dart                  # MMara logo widget
```

---

## Design System

### Color Scheme

| Token | Hex | Usage |
|-------|-----|-------|
| Primary | `#1B3A5C` | Deep Navy Blue — authority, trust |
| On Primary | `#FFFFFF` | Text/icons on primary |
| Secondary | `#D4A843` | Kente Gold — Ghanaian cultural identity |
| On Secondary | `#1B1B1B` | Text on secondary |
| Tertiary | `#2E7D4F` | Forest Green — Ghanaian flag, growth |
| On Tertiary | `#FFFFFF` | Text on tertiary |
| Error | `#BA1A1A` | Warm red for errors |
| Surface | `#F8F9FA` | Background |
| Surface Container | `#FFFFFF` | Cards, sheets |
| On Surface | `#1B1B1B` | Primary text |
| On Surface Variant | `#5F6368` | Secondary text |
| Outline | `#DADCE0` | Borders, dividers |
| User Bubble | `#1B3A5C` | Chat bubble (user) |
| User Bubble Text | `#FFFFFF` | Text in user bubble |
| AI Bubble | `#F0F2F5` | Chat bubble (AI) |
| AI Bubble Text | `#1B1B1B` | Text in AI bubble |
| Emergency Banner | `#FDE8E8` | Light red background |
| Urgency High | `#E65100` | Orange indicator |
| Urgency Medium | `#D4A843` | Gold indicator |
| Urgency Low | `#2E7D4F` | Green indicator |

### Typography

- **Font**: DM Sans (via Google Fonts)
- **Fallback**: System sans-serif

### Shape

- Cards & inputs: `BorderRadius.circular(12)`
- Chat bubbles: `BorderRadius.circular(20)`

### Spacing

| Token | Value |
|-------|-------|
| xs | 4 |
| sm | 8 |
| md | 16 |
| lg | 24 |
| xl | 32 |
| xxl | 48 |

---

## Key Packages

### Dependencies

| Package | Purpose |
|---------|---------|
| `flutter_riverpod` | State management |
| `riverpod_annotation` | Code generation for providers |
| `go_router` | Declarative routing with redirect guards |
| `dio` | HTTP client with interceptor support |
| `flutter_secure_storage` | Encrypted JWT storage |
| `freezed_annotation` | Immutable model classes |
| `json_annotation` | JSON serialization |
| `firebase_core` | Firebase initialization |
| `firebase_messaging` | Push notifications |
| `flutter_local_notifications` | Foreground notification display |
| `intl` | Date formatting |
| `google_fonts` | Typography (DM Sans) |
| `flutter_svg` | SVG asset rendering |
| `url_launcher` | Open external links |
| `shimmer` | Loading skeleton placeholders |
| `flutter_rating_bar` | Star rating for feedback |
| `connectivity_plus` | Network status awareness |
| `package_info_plus` | App version display |

### Dev Dependencies

| Package | Purpose |
|---------|---------|
| `build_runner` | Code generation runner |
| `freezed` | Code gen for models |
| `json_serializable` | JSON toJson/fromJson codegen |
| `riverpod_generator` | Provider code gen |
| `mockito` | Unit test mocking |
| `mocktail` | Simpler mocking alternative |

---

## Screens & Navigation

### Navigation Flow

```
                    [Splash]
                       |
          +-----------+-----------+
          |                       |
       [Login]                 [Chat] (main shell)
          |                       |
    +-----+-----+          +-----+-----+
    |            |          |           |
[Register]  [Forgot      [Chat     [Chat
             Password]    Screen]   History]
                |                     |
           [Reset                [Session
            Password]             Detail] → continues in Chat Screen

Shell bottom nav:
  Tab 1: Chat (new conversation)
  Tab 2: History (past sessions)
  Tab 3: Profile
```

### Route Definitions

| Route Path | Screen | Auth Required |
|------------|--------|---------------|
| `/splash` | SplashScreen | No |
| `/login` | LoginScreen | No (redirect if authed) |
| `/register` | RegisterScreen | No |
| `/forgot-password` | ForgotPasswordScreen | No |
| `/reset-password` | ResetPasswordScreen | No (deep link) |
| `/chat` | ChatScreen (new session) | Yes |
| `/chat/:sessionId` | ChatScreen (continue session) | Yes |
| `/history` | ChatHistoryScreen | Yes |
| `/profile` | ProfileScreen | Yes |
| `/profile/edit` | EditProfileScreen | Yes |
| `/profile/change-password` | ChangePasswordScreen | Yes |
| `/settings` | SettingsScreen | Yes |

---

## Implementation Phases

### Phase 1: Foundation (~16 files)

Set up project scaffolding, theme, routing, and Dio client with placeholder screens.

**Files to create:**
1. `lib/config/app_config.dart`
2. `lib/config/env.dart`
3. `lib/theme/app_colors.dart`
4. `lib/theme/app_theme.dart`
5. `lib/theme/app_text_styles.dart`
6. `lib/theme/app_spacing.dart`
7. `lib/router/routes.dart`
8. `lib/router/app_router.dart`
9. `lib/services/api/api_client.dart`
10. `lib/services/api/api_exceptions.dart`
11. `lib/services/secure_storage_service.dart`
12. `lib/providers/api_client_provider.dart`
13. `lib/providers/router_provider.dart`
14. `lib/app.dart`
15. Update `lib/main.dart`
16. Update `pubspec.yaml`

**Milestone**: App runs, shows placeholder screens, GoRouter navigates between shells.

---

### Phase 2: Models + API Services (~12 files)

All data models with freezed/json_serializable. All API service classes.

**Files to create:**
1. `lib/models/user.dart`
2. `lib/models/token.dart`
3. `lib/models/chat_request.dart`
4. `lib/models/chat_response.dart`
5. `lib/models/citation.dart`
6. `lib/models/chat_history.dart`
7. `lib/models/chat_feedback.dart`
8. `lib/models/user_stats.dart`
9. `lib/models/password_reset.dart`
10. `lib/models/api_error.dart`
11. `lib/services/auth_service.dart`
12. `lib/services/chat_service.dart`
13. `lib/services/user_service.dart`

Run `dart run build_runner build` after creating models.

**Milestone**: All models serialize/deserialize correctly. Services compile.

---

### Phase 3: Auth (~10 files)

Full authentication flow with token management, interceptor, and auth screens.

**Files to create:**
1. `lib/services/api/auth_interceptor.dart`
2. `lib/repositories/auth_repository.dart`
3. `lib/providers/auth_provider.dart`
4. `lib/screens/splash/splash_screen.dart`
5. `lib/screens/auth/login_screen.dart`
6. `lib/screens/auth/register_screen.dart`
7. `lib/screens/auth/forgot_password_screen.dart`
8. `lib/screens/auth/reset_password_screen.dart`
9. `lib/widgets/common/app_button.dart`
10. `lib/widgets/common/app_text_field.dart`

**Milestone**: User can register, log in, persist session, auto-refresh tokens.

---

### Phase 4: Chat Core (~10 files)

The primary feature: sending messages and receiving AI responses.

**Files to create:**
1. `lib/repositories/chat_repository.dart`
2. `lib/providers/chat_provider.dart`
3. `lib/screens/chat/chat_screen.dart`
4. `lib/widgets/chat/message_bubble.dart`
5. `lib/widgets/chat/citation_footnote.dart`
6. `lib/widgets/chat/typing_indicator.dart`
7. `lib/widgets/chat/emergency_banner.dart`
8. `lib/widgets/chat/disclaimer_text.dart`
9. `lib/widgets/common/loading_overlay.dart`
10. `lib/widgets/common/error_widget.dart`

**Chat UX Details:**
- User messages: right-aligned, primary color background, white text
- AI messages: left-aligned, light gray background, dark text
- Citations shown as tappable "N citations" link that expands inline
- Disclaimer as small gray italic text below AI messages
- Emergency banner (red) when `is_emergency == true`
- Input bar with text field + send button, disabled while awaiting response
- New conversation starts without `session_id`; subsequent messages use the returned `session_id`

**Milestone**: Full conversation with AI, citations, emergency indicators.

---

### Phase 5: Chat History (~4 files)

Browse and manage past conversations.

**Files to create:**
1. `lib/providers/chat_history_provider.dart`
2. `lib/screens/chat/chat_history_screen.dart`
3. `lib/widgets/common/empty_state.dart`

Update `chat_screen.dart` to accept `sessionId` parameter and load history.

**Milestone**: View past sessions, tap to continue, swipe to delete.

---

### Phase 6: Feedback (~2 files)

Rating AI responses.

**Files to create:**
1. `lib/widgets/chat/feedback_bottom_sheet.dart`

Add rate button on AI message bubbles. Bottom sheet with 1-5 star rating, optional comment, helpful toggle.

**Milestone**: User can rate any AI response.

---

### Phase 7: Profile & Settings (~6 files)

**Files to create:**
1. `lib/repositories/user_repository.dart`
2. `lib/providers/user_provider.dart`
3. `lib/screens/profile/profile_screen.dart`
4. `lib/screens/profile/edit_profile_screen.dart`
5. `lib/screens/profile/change_password_screen.dart`
6. `lib/screens/settings/settings_screen.dart`

**Stats display**: `total_queries`, `queries_this_month`, `avg_response_time` as cards. `satisfaction_score` shown if non-null.

**Milestone**: Full profile management and password change.

---

### Phase 8: Push Notifications (~2 files)

**Files to create:**
1. `lib/services/push_notification_service.dart`
2. Update `main.dart` to initialize FCM

**Platform setup:**
- Android: Add `google-services.json`, Firebase plugin in `build.gradle.kts`
- iOS: Add `GoogleService-Info.plist`, enable push capability in Xcode

**Milestone**: App requests notification permission, receives FCM token, displays foreground notifications.

---

### Phase 9: Polish (~3 files)

1. `lib/widgets/common/app_logo.dart`
2. Add `assets/` directory with logo, splash illustration
3. Shimmer loading states for chat history and profile
4. Network connectivity banner when offline
5. Consistent error snackbars
6. App icon and splash screen (flutter_launcher_icons, flutter_native_splash)

---

## Key Technical Details

### Auth Interceptor Logic

```
On every request:
  1. Read access_token from SecureStorage
  2. If token exists, add "Authorization: Bearer $token" header

On 401 response:
  1. Lock (prevent concurrent refresh attempts)
  2. Read refresh_token from SecureStorage
  3. Call POST /api/v1/auth/refresh?refresh_token=$refreshToken
  4. If success: store new tokens, retry original request with new access_token
  5. If failure: clear all stored tokens, emit "unauthenticated" state
  6. Unlock
```

### GoRouter Redirect Logic

```dart
redirect: (context, state) {
  final isAuthenticated = ref.read(authStateProvider);
  final isAuthRoute = state.matchedLocation.startsWith('/login') ||
      state.matchedLocation.startsWith('/register') ||
      state.matchedLocation.startsWith('/forgot-password') ||
      state.matchedLocation.startsWith('/reset-password') ||
      state.matchedLocation == '/splash';

  if (!isAuthenticated && !isAuthRoute) return '/login';
  if (isAuthenticated && isAuthRoute) return '/chat';
  return null;
}
```

### API Base URL

```dart
// Android emulator → host machine
static const String baseUrl = 'http://10.0.2.2:8000';
// iOS simulator
// static const String baseUrl = 'http://localhost:8000';
```

### Password Validation

Matching backend rules: minimum 8 characters, at least one uppercase, one lowercase, one digit.

### API Note

Use `/api/v1/auth/me` (not `/api/v1/users/me`) for fetching the current user, as the users endpoint has quirky `args/kwargs` query parameters in the spec.

Use `/api/v1/auth/login/json` (not the form-encoded `/login`) for simpler Dio integration.
