﻿#summary SvnUserAdmin start wiki

# Introduction #
The goal of this project is ratter easy: try to create a userinterface for
apache-mod-mysql-auth or whatever the interface is called.  I created the
userinterface using ruby since that's the latest programming language I learned
and I think it's pretty usefull for this stuff.

# Tables #
## users ##
```
    id:  integer
    login:    string
    fullname: string
    password: string
```
passwords are encrypted in the table.
## groups ##
```
    id: integer
    name: string
    desc: string
```
## usergorups ##
```
    id: integer
    user_id: integer
    group_id: integer
```

## together ##
This is the sql:
```
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
CREATE TABLE IF NOT EXISTS `usergroups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `fullname` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
```