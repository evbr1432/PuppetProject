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
group { "ebrookens":
	ensure => "present",
	gid => 5103,
	}
user { "ebrookens":
	uid => "4017",
	gid => "ebrookens",
	ensure => present,
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	comment => "System Administrator",
	groups => ["ebrookens","root"],
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

group { "mscott":
	ensure => "present",
	gid => 5104,
	}
user { "mscott":
	uid => "4001",
	gid => "mscott",
	ensure => present,
	comment => "Michal Scott",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["mscott","managers"],
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

group { "dschrute":
	ensure => "present",
	gid => 5105,
	}
user { "dschrute":
	uid => "4002",
	gid => "dschrute",
	ensure => present,
	comment => "Dwight Schrute",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["dschrute","managers"],
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

group { "jhalpert":
	ensure => "present",
	gid => 5106,
	}

user { "jhalpert":
	uid => "4003",
	gid => "jhalpert",
	ensure => present,
	comment => "Jim Halpert",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["jhalpert","managers"],
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


group { "pbeesly":
	ensure => "present",
	gid => 5107,
	}
user { "pbeesly":
	uid => "4004",
	gid => "pbeesly",
	ensure => present,
	comment => "Pam Beesley",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["pbeesly"],
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

group { "abernard":
	ensure => "present",
	gid => 5108,
	}

user { "abernard":
	uid => "4005",
	gid => "abernard",
	ensure => present,
	comment => "Andy Bernard",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["abernard","sales"],
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

group { "amartin":
	ensure => "present",
	gid => 5120,
	}

user { "amartin":
	uid => "4006",
	gid => "amartin",
	ensure => present,
	comment => "Angela Martin",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["amartin","accounting"],
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

group { "kkapor":
	ensure => "present",
	gid => 5109,
	}

user { "kkapor":
	uid => "4007",
	gid => "kkapor",
	ensure => present,
	comment => "Kelly Kapoor",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["kkapor"],
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


group { "omartinez":
	ensure => "present",
	gid => 5110,
	}

user { "omartinez":
	uid => "4008",
	gid => "omartinez",
	ensure => present,
	comment => "Oscar Matinez",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["omartinez","accounting"],
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


group { "dphilbin":
	ensure => "present",
	gid => 5111,
	}

user { "dphilbin":
	uid => "4009",
	gid => "dphilbin",
	ensure => present,
	comment => "Darryl Philbin",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["dphilbin"],
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

group { "tflenderson":
	ensure => "present",
	gid => 5112,
	}

user { "tflenderson":
	uid => "4010",
	gid => "tflenderson",
	ensure => present,
	comment => "TOBY -_-",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["tflenderson"],
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


group { "kmalone":
	ensure => "present",
	gid => 5113,
	}

user { "kmalone":
	uid => "4011",
	gid => "kmalone",
	ensure => present,
	comment => "Kevin Malone",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["kmalone","accounting"],
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

group { "plapin":
	ensure => "present",
	gid => 5114,
	}

user { "plapin":
	uid => "4013",
	gid => "plapin",
	ensure => present,
	comment => "Phyllis Lapin",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["plapin","sales"],
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

group { "shudson":
	ensure => "present",
	gid => 5115,
	}

user { "shudson":
	uid => "4014",
	gid => "shudson",
	ensure => present,
	comment => "Stanley Hudson",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["shudson","sales"],
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

group { "mpalmer":
	ensure => "present",
	gid => 5116,
	}

user { "mpalmer":
	uid => "4015",
	gid => "mpalmer",
	ensure => present,
	comment => "Meredith Palmer",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["mpalmer"],
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

group { "cbratton":
	ensure => "present",
	gid => 5117,
	}

user { "cbratton":
	uid => "4016",
	gid => "cbratton",
	ensure => present,
	comment => "Creed Bratton",
	password => '$1$EYejn8F4$hrXLbTlFg3CXedwAXWp4h.',
	groups => ["cbratton"],
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

#For MachineE
#file { '/home/managers/':
#	ensure => "directory",
#	owner => 'managers',
#	group => ['managers'],
#	mode => '2750'
#	recurse => true,
#}

#file { '/home/accounting/':
#	ensure => "directory",
#	owner => 'accounting',
#	group => ['accounting'],
#	mode => '2750'
#	recurse => true,
#}

#file { '/home/sales/':
#	ensure => "directory",
#	owner => 'sales',
#	group => ['sales'],
#	mode => '2750'
#	recurse => true,
#}

