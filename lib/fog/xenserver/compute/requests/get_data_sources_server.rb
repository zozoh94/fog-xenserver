module Fog
  module XenServer
    class Compute
      class Real
        def get_data_sources_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.get_data_sources" }, ref)
        end

        alias_method :get_data_sources_vm, :get_data_sources_server
      end
    end
  end
end
