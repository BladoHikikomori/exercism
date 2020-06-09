package clock

import (
	"time"
)

// Clock defines a type for keeping time.
type Clock struct {
	time time.Time
}

// New is a constructor to create instances of Clock.
func New(hour, min int) Clock {
	return Clock{time: time.Date(0, 0, 0, hour, min, 0, 0, time.UTC)}
}

func (c Clock) String() string {
	return c.time.Format("15:04")
}

// Add moves the clock forward by the provided number of minutes.
func (c Clock) Add(minutes int) Clock {
	// TODO
	return c
}

// Subtract moves the clock forward by the provided number of minutes.
func (c Clock) Subtract(minutes int) Clock {
	// TODO
	return c
}