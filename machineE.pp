file { '/home/managers/':
	ensure => "directory",
	owner => 'managers',
	group => ['managers'],
	mode => '2750',
	recurse => true,
}
file { '/home/sales/':
	ensure => "directory",
	owner => 'sales',
	group => ['sales'],
	mode => '2750',
	recurse => true,
}
file { '/home/accounting/':
	ensure => "directory",
	owner => 'accounting',
	group => ['accounting'],
	mode => '2750',
	recurse => true,
}
