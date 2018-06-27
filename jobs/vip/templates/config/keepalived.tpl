global_defs {
	lvs_id <%= spec.name %>
}

vrrp_script check-postgres {
	script "killall -0 haproxy"
	interval 2
	weight 2
}

vrrp_instance <%= spec.name %>-postgres {
	<% if spec.bootstrap %>
	state MASTER
	priority 101
	<% else %>
	state SLAVE
	priority 100
	<% end %>
	interface <%= p('keepalived.interface') %>
	virtual_router_id <%= p('keepalived.virtual_router_id') %>

	virtual_ipaddress {
		<%= p('vip') %>
	}

	track_script {
		check-postgres
	}
}
