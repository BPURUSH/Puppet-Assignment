class ngnix::etchosts($servername) {

   file { "/etc/hosts" :
         content => template("ngnix/hosts,erb"),
      }
}
