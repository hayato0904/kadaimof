class Property < ApplicationRecord
    validates_presence_of :property_name,
          message: "物件名を入れてください！"

          validates_presence_of :address,
          message: "住所を入れてください！"

          validates_presence_of :age,
          message: "築年数を入力してください！"

          validates_presence_of :note,
          message: "備考欄"

      
    # アソシエーション設定されている。
    has_many :nearest_stations, dependent: :destroy
    # trueが出た時は送信データから除外させていく。
    accepts_nested_attributes_for :nearest_stations, allow_destroy: true
end
