file { '/home/mscott/skel':
	path => "/etc/skel",
	source => 'puppet:/etc/skel/'
	group => 'mscott',
	recurse => true,
}
file { '/tmp/testdir':
	ensure => "directory",
	owner => 'root',
	group => 'wheel',
	mode => '2755',
}
group {"managers":
	ensure => "present",
	gid => "5000",
}
group {"sales":
	ensure => "present",
	gid => "5001"
}
group {"accounting":
	ensure => "present"
	gid => 5002"
"
group {"mscott":
	ensure => "present"
	gid => "4001"
}

user { "mscott":
	uid => "4001",
	ensure => present,
	comment => "Michal Scott",
	gid => "4001",
	groups => ["manager","sales","accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
}
