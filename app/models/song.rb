class Song < ApplicationRecord
    scope :finished, -> { where( finished: true ) }
    scope :upcoming, -> { where( finished: false, skipped: false ) }
    scope :postponed, -> { where( finished: false, postponed: true ) }
    scope :skipped, -> { where( finished: false, skipped: true ) }
end