class ngnix::serverinfo {

       $serverinfodata = [
              {
                metric => $::puppetversion
                description => Shows puppet Version
              },
              {
                metric => $::rubyplatform
                description => "Ruby Version"
              },
             {
                metric => $::kernalmajversion
                description => "Kernal Version"
              },
              {
                metric => $::kernalrelease
                description => "Kernal Release"
              }



