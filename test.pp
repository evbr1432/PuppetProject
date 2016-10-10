
file { "/home/mscott/skel":
	ensure => 'directory',
	source => "file:///tmp/apt",
	recurse => true,
}
