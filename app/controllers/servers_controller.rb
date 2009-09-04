class ServersController < ApplicationController

  def index
    t = Time.now.to_i

    groups = Server.find(:all, :select => "ip, response, created_at").group_by(&:ip)
    @ips = {}
    for ip in groups.keys
      @ips[ip] = groups[ip].sort_by(&:created_at).map{|i| [(t - i.created_at.to_i)/60.0, i.response] }
    end
  end

end
