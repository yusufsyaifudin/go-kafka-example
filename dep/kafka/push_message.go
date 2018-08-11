package kafka

import (
	"context"

	"time"

	"github.com/segmentio/kafka-go"
)

func Push(parent context.Context, key, value []byte) (err error) {
	message := kafka.Message{
		Key:   key,
		Value: value,
		Time:  time.Now(),
	}

	return writer.WriteMessages(parent, message)
}
