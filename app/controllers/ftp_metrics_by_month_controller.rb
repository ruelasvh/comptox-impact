class FtpMetricsByMonthController < ApplicationController
  def month
    app = params[:app]
    list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id AND ftp_metrics.app = '" + app + "'")
    highMonth = list.max { |a, b| a.month <=> b.month }
    secondMonth = list.where.not(:month => highMonth.month).max { |a, b| a.month <=> b.month }
    toptenlist = list.where(:month => secondMonth.month).order(count: :desc).limit(10)
    topten = toptenlist.map {|file| { name: file.ftp_metric.name, count: file.count } }
    render(
        status: 200,
        json: { data: topten,
                month: secondMonth.month }
    )
  end
  def year
    app = params[:app]
    list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id AND ftp_metrics.app = '" + app + "'")
    highMonth = list.max { |a, b| a.month <=> b.month }
    highYear = highMonth.month[0..3].to_i - 1
    toptenlist = list.where("month like?", "#{highYear}%").group('ftp_metrics.name').sum(:count).sort_by { |id, count| -count }[0..9]
    topten = toptenlist.map {|id, count| { name: id, count: count } }
    render(
        status: 200,
        json: { data: topten,
                year: highYear.to_s }
    )
  end
end
