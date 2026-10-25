enum ReportType { lost, found }

/// Open > Matched > Returned > Closed
enum ReportStatus { open, matched, returned, closed }

enum ReportCategory { wallet, phone, keys, pet, bag, other }

/// Date chips in the Filters sheet.
enum DateRangeFilter { any, last24h, last7d }

enum ClaimStatus { pending, approved, rejected }
