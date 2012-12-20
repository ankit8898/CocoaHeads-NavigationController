class NewsItemViewController < UIViewController

  attr_accessor :news_item

  TITLE_LABEL_TAG = 1

  IMAGE_VIEW_TAG = 2

  NOTE_TEXTVIEW_TAG = 3

  def viewDidLoad

    setup_title_label
    setup_image_view
    setup_note_text_view
  end


  def setup_title_label

    title_label = self.view.viewWithTag(TITLE_LABEL_TAG)
    p "------#{title_label}"
    title_label.text = @news_item.title
  end


  def setup_image_view

    if @news_item.image

      image_view = self.view.viewWithTag(IMAGE_VIEW_TAG)
      image_view.image = UIImage.imageNamed @news_item.image
    end
  end


  def setup_note_text_view

    note_text_view = self.view.viewWithTag(NOTE_TEXTVIEW_TAG)
    note_text_view.text = @news_item.note
    unless @news_item.image
      note_text_view.frame = [[20,63], [280, 310]]
    end
  end

end