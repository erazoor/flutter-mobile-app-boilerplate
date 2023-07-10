// Error Messages
const String kErrorMessageNetwork = 'Network error occurred.';
const String kErrorMessageServer = 'Server error occurred.';
const String kErrorMessageNotFound = 'Requested resource not found.';
const String kErrorMessageUnauthorized = 'Unauthorized access.';
const String kErrorMessageTimeout = 'Request timed out.';
const String kErrorMessageUnknown = 'Unknown error occurred.';

// Error Codes
const int kErrorCodeNetwork = 100;
const int kErrorCodeServer = 200;
const int kErrorCodeUnauthorized = 401;
const int kErrorCodeNotFound = 404;
const int kErrorCodeTimeout = 408;
const int kErrorCodeUnknown = 500;

// Error Handling Constants
const Duration kErrorTimeoutDuration = Duration(seconds: 10);
const int kErrorMaxRetries = 3;
const double kErrorThreshold = 0.5;
