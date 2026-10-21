import 'package:findora/core/language/locales.dart';

extension AppStrings on AppLocalizations {
  String get appName => tr('appName');

  String get appTagline => tr('appTagline');

  String get commonAll => tr('commonAll');

  String get commonLost => tr('commonLost');

  String get commonFound => tr('commonFound');

  String get commonOpen => tr('commonOpen');

  String get commonMatched => tr('commonMatched');

  String get commonReturned => tr('commonReturned');

  String get commonClaimPending => tr('commonClaimPending');

  String get commonFilters => tr('commonFilters');

  String get commonBack => tr('commonBack');

  String get commonNext => tr('commonNext');

  String get commonSkip => tr('commonSkip');

  String get commonRetry => tr('commonRetry');

  String get commonSave => tr('commonSave');

  String get commonReset => tr('commonReset');

  String get commonSend => tr('commonSend');

  String get commonAttach => tr('commonAttach');

  String get commonAddPhoto => tr('commonAddPhoto');

  String get commonOr => tr('commonOr');

  String get navHome => tr('navHome');

  String get navMap => tr('navMap');

  String get navChats => tr('navChats');

  String get navProfile => tr('navProfile');

  String get navNewReport => tr('navNewReport');

  String get authHeadline1 => tr('authHeadline1');

  String get authHeadline2 => tr('authHeadline2');

  String get authEmail => tr('authEmail');

  String get authEmailHint => tr('authEmailHint');

  String get authPassword => tr('authPassword');

  String get authPasswordHint => tr('authPasswordHint');

  String get authForgotPassword => tr('authForgotPassword');

  String get authLogIn => tr('authLogIn');

  String get authContinueWithGoogle => tr('authContinueWithGoogle');

  String get authNewHere => tr('authNewHere');

  String get authCreateAccount => tr('authCreateAccount');

  String get onboardingSlide1Title => tr('onboardingSlide1Title');

  String get onboardingSlide1Body => tr('onboardingSlide1Body');

  String get onboardingSlide2Title => tr('onboardingSlide2Title');

  String get onboardingSlide2Body => tr('onboardingSlide2Body');

  String get onboardingSlide3Title => tr('onboardingSlide3Title');

  String get onboardingSlide3Body => tr('onboardingSlide3Body');

  String get homeNearbyReports => tr('homeNearbyReports');

  String homeWithinRadius(String city, int km) =>
      tr('homeWithinRadius', {'city': '$city', 'km': '$km'});

  String get homeSearchHint => tr('homeSearchHint');

  String get mapSearchArea => tr('mapSearchArea');

  String detailsLastSeen(String place, String date) =>
      tr('detailsLastSeen', {'place': '$place', 'date': '$date'});

  String get detailsVerifiedEmail => tr('detailsVerifiedEmail');

  String get detailsPrivacyNote => tr('detailsPrivacyNote');

  String get detailsIFoundIt => tr('detailsIFoundIt');

  String get createTitle => tr('createTitle');

  String createStep(int current, int total) =>
      tr('createStep', {'current': '$current', 'total': '$total'});

  String get createILost => tr('createILost');

  String get createIFound => tr('createIFound');

  String createPhotos(int max) => tr('createPhotos', {'max': '$max'});

  String get createTitleLabel => tr('createTitleLabel');

  String get createTitleHint => tr('createTitleHint');

  String get createCategory => tr('createCategory');

  String get createDescription => tr('createDescription');

  String get createDescriptionHint => tr('createDescriptionHint');

  String get createContinueToLocation => tr('createContinueToLocation');

  String get createWhereWasIt => tr('createWhereWasIt');

  String get createMapPlaceholder => tr('createMapPlaceholder');

  String get createStreetAddress => tr('createStreetAddress');

  String get createStreetAddressHint => tr('createStreetAddressHint');

  String get createDateLost => tr('createDateLost');

  String get createDateHint => tr('createDateHint');

  String get createConfirmLocation => tr('createConfirmLocation');

  String get categoriesWallet => tr('categoriesWallet');

  String get categoriesPhone => tr('categoriesPhone');

  String get categoriesKeys => tr('categoriesKeys');

  String get categoriesPet => tr('categoriesPet');

  String get categoriesBag => tr('categoriesBag');

  String get categoriesOther => tr('categoriesOther');

  String get claimTitle => tr('claimTitle');

  String get claimPrivacyInfo => tr('claimPrivacyInfo');

  String get claimReporterQuestion => tr('claimReporterQuestion');

  String get claimYourAnswer => tr('claimYourAnswer');

  String get claimAnswerHint => tr('claimAnswerHint');

  String get claimProofPhoto => tr('claimProofPhoto');

  String get claimSend => tr('claimSend');

  String get claimNotifyHint => tr('claimNotifyHint');

  String get chatOnline => tr('chatOnline');

  String get chatMessageHint => tr('chatMessageHint');

  String get chatTyping => tr('chatTyping');

  String get chatClaimApproved => tr('chatClaimApproved');

  String get chatsTitle => tr('chatsTitle');

  String get chatsClaims => tr('chatsClaims');

  String get chatsArchived => tr('chatsArchived');

  String get filtersTitle => tr('filtersTitle');

  String get filtersType => tr('filtersType');

  String get filtersCategory => tr('filtersCategory');

  String get filtersDistance => tr('filtersDistance');

  String get filtersDate => tr('filtersDate');

  String get filtersAny => tr('filtersAny');

  String get filtersLast24h => tr('filtersLast24h');

  String get filtersLast7d => tr('filtersLast7d');

  String get filtersShowResults => tr('filtersShowResults');

  String get notificationsTitle => tr('notificationsTitle');

  String get notificationsMarkAllRead => tr('notificationsMarkAllRead');

  String get notificationsToday => tr('notificationsToday');

  String get notificationsEarlier => tr('notificationsEarlier');

  String get notificationsNewClaim => tr('notificationsNewClaim');

  String notificationsNewClaimBody(String item) =>
      tr('notificationsNewClaimBody', {'item': '$item'});

  String notificationsNewMessage(String name) =>
      tr('notificationsNewMessage', {'name': '$name'});

  String notificationsStatusChanged(String status) =>
      tr('notificationsStatusChanged', {'status': '$status'});

  String get notificationsPossibleMatch => tr('notificationsPossibleMatch');

  String get notificationsPossibleMatchBody =>
      tr('notificationsPossibleMatchBody');

  String get profileVerified => tr('profileVerified');

  String get profileMyReports => tr('profileMyReports');

  String get profileMyClaims => tr('profileMyClaims');

  String get profileSaved => tr('profileSaved');

  String get profileSettings => tr('profileSettings');

  String get profileLogOut => tr('profileLogOut');

  String get settingsTitle => tr('settingsTitle');

  String get settingsNotifications => tr('settingsNotifications');

  String get settingsMessages => tr('settingsMessages');

  String get settingsClaimUpdates => tr('settingsClaimUpdates');

  String get settingsNearbyReports => tr('settingsNearbyReports');

  String get settingsGeneral => tr('settingsGeneral');

  String get settingsLanguage => tr('settingsLanguage');

  String get settingsBlockedUsers => tr('settingsBlockedUsers');

  String get settingsPrivacyPolicy => tr('settingsPrivacyPolicy');

  String get settingsDeleteAccount => tr('settingsDeleteAccount');

  String get statesEmptyTitle => tr('statesEmptyTitle');

  String get statesEmptyBody => tr('statesEmptyBody');

  String get statesCreateReport => tr('statesCreateReport');

  String get statesErrorTitle => tr('statesErrorTitle');

  String get statesErrorBody => tr('statesErrorBody');

  String get statesOffline => tr('statesOffline');

  String get authHaveAccount => tr('authHaveAccount');

  String get fullName => tr('fullName');

  String get settingsTheme => tr('settingsTheme');

  String get edit => tr('edit');

  String get system => tr('system');
  String get dark => tr('dark');
  String get light => tr('light');
}
