# Event Grid Broadcast to event hubs

Solution demoing how to use event grid to broadcast different custom events to multiple event hubs.

The concept is that of a Hub solution broadcasting data to different spoke solutions.  The Event Grid Topic is part of the Hub Solution while each spoke will have an Event Grid subscription with an Event Hub as a sink.