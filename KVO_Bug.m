In Objective-C, a subtle bug can arise from the interaction between KVO (Key-Value Observing) and memory management.  If an observer is not removed before the observed object is deallocated, it can lead to crashes or unexpected behavior.  This is particularly true if the observer is a weak reference and the observed object is deallocated while the observer is still active. The `removeObserver:forKeyPath:` method must always be called to prevent this.