class Property < ApplicationRecord
    # アソシエーション設定されている。
    has_many :nearest_stations, dependent: :destroy
    # trueが出た時は送信データから除外させていく。
    accepts_nested_attributes_for :nearest_stations, allow_destroy: true
end
