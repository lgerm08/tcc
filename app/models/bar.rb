class Bar < ApplicationRecord
  belongs_to :trafo, optional:true
  belongs_to :gen, optional:true
  belongs_to :turb, optional:true
end
