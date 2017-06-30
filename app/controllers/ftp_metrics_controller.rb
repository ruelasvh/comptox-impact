class FtpMetricsController < ApplicationController
  # GET /api/ftpmetrics
  def index
    render(
        status: 200,
        json: FtpMetric.all
    )
  end

  # GET /api/ftpmetrics/tree
  def tree
    app = params[:app]
    list = FtpMetric.where(:app => app).order(:parent_id)
    unless list[0].parent.nil?
      list.unshift(list[0].parent)
    end
    root = list[0]

    tree = {
      n: root.name,
      f: root.folder,
      d: root.count,
      u: root.unique_count,
      c: root.children.where(:app => app).map { |e| make_tree(e) }
    }
    render(
      status: 200,
      json: tree
    )
  end

  def make_tree(element)
    obj = { n: element.name,
            f: element.folder,
            d: element.count,
            u: element.unique_count,
            c: element.children.map { |e| make_tree(e) }
    }
    return obj
  end
end
