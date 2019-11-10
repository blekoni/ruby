class Team < ApplicationRecord
  belongs_to :city
  belongs_to :sponsor
  validates :name, :presence => {:message => "Вкажіть назву"}
  validates :color, :presence => {:message => "Вкажіть колір"}
  validates :city_id, numericality: {greater_than: -1}
  validates :sponsor_id, numericality: {greater_than: -1}
  validates :budget, numericality: {greater_than: 0, :message => "Бюджет повинен бути більшм за 0"}
  validates :year, numericality: {greater_than: 1900, :message => "Дата повинна бути більшою за 1900"}
end
