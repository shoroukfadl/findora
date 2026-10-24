enum ScreenRoutes {
  mainScreen,
  login,
  register,
  home,
  reportDetails,
  saved,
  reports,
  chats,
  chat,
  profile,
  settings,
  notifications,
  createReport,
  forgotPassword,
  resetLink,
  code,
  verifyEmail,
  aiSummary,
  downloads,
  contacts,
  newGroups,
  createChat,
  reviewClaim,
  profileSetup,
  calls,
  profileChat,
  blockedUsers,
  privacyPolicy,
  editReport
}

enum AppLanguage { en, ar }

enum AppThemeMode { light, dark, system }

enum AuthProvider { email, google, apple }

enum FileTypeGroup {
  image,
  video,
  audio,
  document,
  any,
  custom,
}

enum Collection {
  users,
}

enum ReportStatus { open, matched, returned, closed }
