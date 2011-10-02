module BookmarksHelper
  def labels
    Label.find :all do |label|
      label.title
    end
  end
  
  def labels_for_bookmark(bookmark)
    Label.find_all_by_bookmark_id(bookmark_id)
  end
end
