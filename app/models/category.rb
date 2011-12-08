class Category < ActiveRecord::Base
  validates :title, :presence=>true,
            :uniqueness=>{ :message=>"ej jest ju taka kategoria!"}
  validate :validate_uniqueness
            
            
  def validate_uniqueness
    puts "\n\n\n dupa dupa dupa \n\n\n"
    if Category.find(:first,:conditions=>["title = ?",title])
      errors.add(:title, "blad polskich literek")
    end
  end
end
