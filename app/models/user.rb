class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username,
            presence: true,
            length: { in: 3...20 },
            uniqueness: { case_sensitive: false }
  validates :age,
            presence: true,
            numericality: true,
            inclusion: { in: Rails.configuration.minimum_age..120 }
  validates :gender,
            presence: true,
            inclusion: { in: %w[male female] }
  validates :country_code,
            presence: true,
            inclusion: { in: ISO3166::Country.all.map(&:alpha2) }
end
