class ServersController < ApplicationController

  def index
    groups = Server.find(:all, :select => "ip, response, created_at").group_by(&:ip)
    @ips = {}
    for ip in groups.keys
      n = 0
      @ips[ip] = groups[ip].map{|i| n += 1; [n, i.response] }
    end
  end

end
