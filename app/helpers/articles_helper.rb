module ArticlesHelper
  def month_day_comma_year(datatime)
    datatime.strftime('%B %e, %Y')
  end
end
