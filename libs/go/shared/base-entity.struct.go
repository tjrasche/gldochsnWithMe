package shared

import (
	"github.com/satori/go.uuid"
	"time"
)

type BaseEntity struct {
	ID        uuid.UUID `gorm:"type:uuid;primary_key;"`
	CreatedAt time.Time
	UpdatedAt time.Time
}
