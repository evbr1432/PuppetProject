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


user { "ebrookens":
	uid => "4017",
	ensure => present,
	comment => "System Administrator",
	gid => "4017",
	groups => ["managers","sales","accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/ebrookens",
	managehome => 'true',
}

file { '/home/ebrookens':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'ebrookens',
	group => 'ebrookens',
	mode => '2755',
	recurse => true,
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
	source => "file:///etc/skel",
	owner => 'mscott',
	group => 'mscott',
	mode => '2755',
	recurse => true,
}

user { "dschrute":
	uid => "4002",
	ensure => present,
	comment => "Dwight Schrute",
	gid => "4002",
	groups => ["managers","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dschrute",
	managehome => 'true',
}

file { '/home/dschrute':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'dschrute',
	group => 'dschrute',
	mode => '2755',
	recurse => true,
}


user { "jhalpert":
	uid => "4003",
	ensure => present,
	comment => "Jim Halpert",
	gid => "4003",
	groups => ["managers","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/jhalpert",
	managehome => 'true',
}

file { '/home/jhalpert':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'jhalpert',
	group => 'jhalpert',
	mode => '2755',
	recurse => true,
}


user { "pbeesly":
	uid => "4004",
	ensure => present,
	comment => "Pam Beesley",
	gid => "4004",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/pbeesly",
	managehome => 'true',
}

file { '/home/pbeesly':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'pbeesly',
	group => 'pbeesly',
	mode => '2755',
	recurse => true,
}


user { "abernard":
	uid => "4005",
	ensure => present,
	comment => "Andy Bernard",
	gid => "4005",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abernard",
	managehome => 'true',
}

file { '/home/abernard':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'abernard',
	group => 'abernard',
	mode => '2755',
	recurse => true,
}


user { "amartin":
	uid => "4006",
	ensure => present,
	comment => "Angela Martin",
	gid => "4006",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/amartin",
	managehome => 'true',
}

file { '/home/amartin':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'amartin',
	group => 'amartin',
	mode => '2755',
	recurse => true,
}

user { "kkapor":
	uid => "4007",
	ensure => present,
	comment => "Kelly Kapoor",
	gid => "4007",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kkapor",
	managehome => 'true',
}

file { '/home/kkapor':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'kkapor',
	group => 'kkapor',
	mode => '2755',
	recurse => true,
}

user { "omartinez":
	uid => "4008",
	ensure => present,
	comment => "Oscar Matinez",
	gid => "4008",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/omartinez",
	managehome => 'true',
}

file { '/home/omartinez':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'omartinez',
	group => 'omartinez',
	mode => '2755',
	recurse => true,
}


user { "dphilbin":
	uid => "4009",
	ensure => present,
	comment => "Darryl Philbin",
	gid => "4009",
	groups => ["managers"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dphilbin",
	managehome => 'true',
}

file { '/home/dphilbin':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'dphilbin',
	group => 'dphilbin',
	mode => '2755',
	recurse => true,
}


user { "tflenderson":
	uid => "4010",
	ensure => present,
	comment => "TOBY -_-",
	gid => "4010",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/tflenderson",
	managehome => 'true',
}

file { '/home/tflenderson':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'tflenderson',
	group => 'tflenderson',
	mode => '2755',
	recurse => true,
}


user { "kmalone":
	uid => "4011",
	ensure => present,
	comment => "Kevin Malone",
	gid => "4011",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kmalone",
	managehome => 'true',
}

file { '/home/kmalone':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'kmalone',
	group => 'kmalone',
	mode => '2755',
	recurse => true,
}

user { "plapin":
	uid => "4013",
	ensure => present,
	comment => "Phyllis Lapin",
	gid => "4013",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/plapin",
	managehome => 'true',
}

file { '/home/plapin':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'plapin',
	group => 'plapin',
	mode => '2755',
	recurse => true,
}



user { "shudson":
	uid => "4014",
	ensure => present,
	comment => "Stanley Hudson",
	gid => "4014",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/shudson",
	managehome => 'true',
}

file { '/home/shudson':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'shudson',
	group => 'shudson',
	mode => '2755',
	recurse => true,
}


user { "mpalmer":
	uid => "4015",
	ensure => present,
	comment => "Meredith Palmer",
	gid => "4015",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mpalmer",
	managehome => 'true',
}

file { '/home/mpalmer':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'mpalmer',
	group => 'mpalmer',
	mode => '2755',
	recurse => true,
}

user { "cbratton":
	uid => "4016",
	ensure => present,
	comment => "Creed Bratton",
	gid => "4016",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/cbratton",
	managehome => 'true',
}

file { '/home/cbratton':
	ensure => "directory",
	source => "file:///etc/skel",
	owner => 'cbratton',
	group => 'cbratton',
	mode => '2755',
	recurse => true,
}









