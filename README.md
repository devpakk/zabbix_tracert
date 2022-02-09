Zabbix template that allows you to monitor the availability of a resource using Zabbix Agent (Windows).

Purpose: 
To control the availability of a resource from different points (computers). Make a trace to the resource and plot the response time of each Hop.

Received values:
1. Resource response time
2. Response code
3. Number of Hops
4. Hop Response Time Graph
5. Resource Availability SLO

Configuration:
1. Add the line to zabbix_agentd.conf or zabbix_agent2.conf:
    UserParameter=tracert[*], powershell -File "C:\Zabbix\tracer.ps1" $1
2. Increase Timeout on Server and Client to 30 seconds (zabbix_agentd.conf or zabbix_agent2.conf, on server zabbix_server.conf)
    Timeout=30
3. Move tracer.ps1 to C:\Zabbix\
4. Import template to Zabbix
5. After exporting to Zabbix, change the SITE.COM to your resource in the template.
