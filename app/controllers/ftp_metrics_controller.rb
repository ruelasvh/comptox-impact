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
    if app === 'comptoxdata'
      sql = "SELECT f.* FROM sbox_vruelasr_comptox_impact.ftp_metrics f WHERE f.parent_id not in (select id from sbox_vruelasr_comptox_impact.ftp_metrics)"
      roots = FtpMetric.connection.select_all(sql)
      tree = []
      list = FtpMetric.all
      roots.each { |root|
        id = root['id']
        root = list.find_by(:id => id)
        subtree = {
            id: root.id,
            filename: root.name,
            folder: root.folder,
            count: root.count,
            uniqueCount: root.unique_count,
            children: root.children.order(count: :desc).map { |e| make_tree(e) }
        }

        tree.push(subtree)
      }

      render(
          status: 200,
          json: tree
      )
    else
      list = FtpMetric.where(:app => app).order(:parent_id)
      unless list[0].parent.nil?
        list.unshift(list[0].parent)
      end
      root = list[0]

      tree = {
          id: root.id,
          filename: root.name,
          folder: root.folder,
          count: root.count,
          uniqueCount: root.unique_count,
          children: root.children.where(:app => app).order(count: :desc).map { |e| make_tree(e) }
      }

      render(
          status: 200,
          json: tree
      )
    end

  end

  def make_tree(element)
    obj = { id: element.id,
            filename: element.name,
            folder: element.folder,
            count: element.count,
            uniqueCount: element.unique_count,
            children: element.children.order(count: :desc).map { |e| make_tree(e) }
    }
    return obj
  end
end
