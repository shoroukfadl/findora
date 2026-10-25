enum MessageType { text, image, system }

/// Local only (optimistic UI). Messages loaded from the server are [sent].
enum MessageDeliveryStatus { sending, sent, failed }
