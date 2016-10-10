
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

user { "mscott":
	uid => "4001",
	ensure => present,
	comment => "Michal Scott",
	gid => "4001",
	groups => ["managers","sales","accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => 'true',
}
file { '/home/mscott':
	ensure => "directory",
	owner => 'mscott',
	group => 'mscott',
	mode => '2755',
}
#applys etc/skel applys and make new /home/user/skel
$source_dir_mscott = '/etc/skel'
$target_dir_mscott = '/home/mscott/skel'
file { $target_dir_mscott :
	ensure => 'directory',
	source => "file://${source_dir_mscott}",
	owner => "mscott",
	recurse => true,
}