#file { '/home/mscott/skel':
#	path => "/etc/skel",
#	source => 'puppet:/etc/skel/'
#	group => 'mscott',
#	recurse => true,
#}
#file { '/home/mscott':
#	ensure => "directory",
#	owner => 'mscott',
#	group => 'mscott',
#	mode => '2755',
#}
group {"managers":
	ensure => "present",
	gid => "5100",
}
group {"sales":
	ensure => "present",
	gid => "5101",
}
group {"accounting":
	ensure => "present",
	gid => "5102",
}
group {"mscott":
	ensure => "present",
	gid => "4001",
}

user { "mscott":
	uid => "4001",
	ensure => present,
	comment => "Michal Scott",
	gid => "4001",
	groups => ["managers","sales","accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
}
file { '/home/mscott':
	ensure => "directory",
	owner => 'mscott',
	group => 'mscott',
	mode => '2755',
}
