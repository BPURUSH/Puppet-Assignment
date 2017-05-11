 node default {
    nginx::vhost::createwebsite{"site1": 
                domain => 'site1.pbheema.in',
                root => "/home/ubuntu/site1"
  }
  nginx::vhost::createwebsite{"site2":
                domain => 'site2.pbheema.in',
                root => "/home/ubuntu/site2"
  }

  $servers = [
  
  {
       ip_adress => '127.0.0.1',
	   hostname => 'site1.pbheema.in'
	   },
	  {
	  ip_adress => '127.0.0.1',
	   hostname => 'site2.pbheema.in'
	   },

        ]

class { 'nginx::etchosts' :
     servername => $servers
     }
}
