module ApplicationHelper
  def date_to_str(date)
    begin
      date.strftime("%d/%m/%Y")
    rescue
      ""
    end
  end
end
