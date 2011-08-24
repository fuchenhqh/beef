#
#   Copyright 2011 Wade Alcorn wade@bindshell.net
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
module BeEF
module Core
module NetworkStack
  
  module RegisterHttpHandler
    #
    # Register the http handler for the network stack
    #
    def self.mount_handler(server)
      #dynamic handler
      server.mount('/dh', true, BeEF::Core::NetworkStack::Handlers::DynamicReconstruction)
    end
    
  end
  
    # Register core API calls
    BeEF::API::Registra.instance.register(BeEF::Core::NetworkStack::RegisterHttpHandler, BeEF::API::Server, 'mount_handler')

end
end
end
