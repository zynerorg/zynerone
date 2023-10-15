We need to fix database stuff into diesel.rs first:

- [x] Migrations (https://github.com/ZynerOrg/zynerone/pull/22)

Some of the PHP variables are stored here: https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/vars.inc.php

# Function files checked:
  - [ ] [other](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.inc.php)
  - [ ] [acl](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.acl.inc.php)
  - [ ] [address_rewriting](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.address_rewriting.inc.php)
  - [ ] [admin](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.admin.inc.php)
  - [ ] [app_passwd](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.app_passwd.inc.php)
  - [ ] [customize](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.customize.inc.php)
  - [ ] [dkim](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.dkim.inc.php)
  - [ ] [docker](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.docker.inc.php)
  - [ ] [domain_admin](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.domain_admin.inc.php)
  - [ ] [netfilter](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.netfilter.inc.php)
  - [ ] [fwdhost](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.fwdhost.inc.php)
  - [x] [mailbox](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php)
  - [ ] [mailq](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailq.inc.php)
  - [ ] [oauth2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.oauth2.inc.php)
  - [ ] [policy](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.policy.inc.php)
  - [ ] [presets](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.presets.inc.php)
  - [ ] [pushover](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.pushover.inc.php)
  - [ ] [quarantine](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.quarantine.inc.php)
  - [ ] [quota_notification](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.quota_notification.inc.php)
  - [ ] [ratelimit](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.ratelimit.inc.php)
  - [ ] [rspamd](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.rspamd.inc.php)
  - [ ] [tls_policy_maps](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.tls_policy_maps.inc.php)
  - [ ] [transports](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.transports.inc.php)

# REST Endpoints:

- [ ] System
  - [ ] Host
  - [ ] Containers ([code inspiration](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py))
    - [ ] [container_post__stop](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L23-L33)
    - [ ] [container_post__start](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L35-L45)
    - [ ] [container_post__restart](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L47-L57)
    - [ ] [container_post__top](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L59-L67)
    - [ ] [container_post__stats](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L69-L78)
    - [ ] [container_post__exec__mailq__delete](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L80-L94)
    - [ ] [container_post__exec__mailq__hold](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L96-L110)
    - [ ] [container_post__exec__mailq__cat](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L112-L128)
    - [ ] [container_post__exec__mailq__unhold](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L130-L144)
    - [ ] [container_post__exec__mailq__deliver](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L146-L162)
    - [ ] [container_post__exec__mailq__list](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L164-L172)
    - [ ] [container_post__exec__mailq__flush](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L174-L182)
    - [ ] [container_post__exec__mailq__super_delete](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L184-L192)
    - [ ] [container_post__exec__system__fts_rescan](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L194-L217)
    - [ ] [container_post__exec__system__df](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L219-L231)
    - [ ] [container_post__exec__system__mysql_upgrade](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L233-L255)
    - [ ] [container_post__exec__system__mysql_tzinfo_to_sql](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L257-L270)
    - [ ] [container_post__exec__reload__dovecot](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L272-L280)
    - [ ] [container_post__exec__reload__postfix](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L282-L290)
    - [ ] [container_post__exec__reload__nginx](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L292-L300)
    - [ ] [container_post__exec__sieve__list](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L302-L311)
    - [ ] [container_post__exec__sieve__print](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L313-L323)
    - [ ] [container_post__exec__maildir__cleanup](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L325-L344)
    - [ ] [container_post__exec__rspamd__worker_password](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L346-L376)
    - [ ] [get_container_stats](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L407-L439)
    - [ ] [exec_cmd_container](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L441-L476)
    - [ ] [exec_run_handler](https://github.com/ZynerOrg/zynerone/blob/master/data/Dockerfiles/dockerapi/modules/DockerApi.py#L478-L487)

- [ ] Mail
  - [ ] Needs investigation
    - [ ] Sender ACL Handles
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3447-L3573)
    - [ ] Active User Sieve
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3723-L3753)
    - [ ] Shared Aliases
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4089-L4104)
    - [ ] Direct Aliases
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4105-L4121)
    - [ ] EAS Cache
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4726-L4762)
    - [ ] SOGo Profile
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4763-L4835)
  - [ ] Domains
    - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L465-L666)
    - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4122-L4172)
    - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4173-L4309)
    - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2541-L2787)
    - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4836-L4973)
    - [ ] Tags
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5487-L5538)
    - [ ] Domain Wide Footer
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4570-L4602)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3405-L3444)
    - [ ] Aliases
      - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L863-L992)
      - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3952-L3981)
      - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4052-L4088)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1621-L1678)
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5047-L5116)
    - [ ] Templates
      - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1426-L1499)
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4310-L4347)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2788-L2862)
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4974-L5010)
  - [ ] Mailboxes
    - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L993-L1311)
    - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3574-L3628)
    - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4348-L4495)
    - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2863-L3220)
    - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5117-L5370)
    - [ ] Tags
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5539-L5593)
    - [ ] Filter
      - [ ] Delimiter Action
        - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3896-L3921)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1971-L2038)
      - [ ] Sieve
        - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L180-L277)
        - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3677-L3693)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2236-L2318)
        - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4646-L4684)
      - [ ] Spam
        - [ ] Score
          - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3812-L3874)
          - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1851-L1924)
    - [ ] Quarantine
      - [ ] Notification
        - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3647-L3661)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1733C15-L1791)
      - [ ] Category
        - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3662-L3676)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1792-L1850)
    - [ ] TLS Policies
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3629-L3646)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1679-L1732)
    - [ ] Templates
      - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1500-L1618)
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4496-L4533)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3221-L3325)
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5371-L5407)
    - [ ] Aliases
      - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3982-L3998)
      - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3999-L4051)
      - [ ] Normal
        - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L667-L862)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2319-L2540)
        - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5011-L5046)
      - [ ] Time Limited
        - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L14-L77)
        - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3875-L3895)
        - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1925-L1970)
        - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4685-L4725)
    - [ ] Syncjobs
      - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L278-L464)
      - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3754-L3794)
      - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3795-L3811)
      - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L2039-L2235)
      - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4607-L4645)
  - [ ] Filters (global)
    - [ ] Sieve
      - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L78C15-L179)
      - [ ] [Read function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3694-L3722)
- [ ] Calendar (low knowledge about these endpoints)
  - [ ] Resources
    - [ ] [Create function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L1312-L1425)
    - [ ] [Read function v1](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3922-L3951)
    - [ ] [Read function v2](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L4534-L4569) 
    - [ ] [Update function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L3326-L3404)
    - [ ] [Delete function](https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L5408-L5486)


## Other information:

**Update SOGo Static View**
```php
  if ($_action != 'get' && in_array($_type, array('domain', 'alias', 'alias_domain', 'resource')) && getenv('SKIP_SOGO') != "y") {
    update_sogo_static_view();
  }
```

Endpoints:

- [ ] Rewrite this code into the Rust API (https://github.com/ZynerOrg/zynerone/tree/master/data/Dockerfiles/dockerapi), this also makes us use one less container! Make use of this crate: https://docs.rs/docker-api/latest/docker_api/index.html While doing this, make sure to point the frontend to it: https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.docker.inc.php
- [ ] Mail Endpoints
  - [ ] Domains (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php)
  - [ ] Mailboxes (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php)
  - [ ] Aliases
    - [ ] Time Limited Alias
      - [ ] Create (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailbox.inc.php#L14-L77)
  - [ ] Rspamd (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.rspamd.inc.php)
  - [ ] App Passwords (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.app_passwd.inc.php)
  - [ ] Address Rewriting (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.address_rewriting.inc.php)
  - [ ] DKIM (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.dkim.inc.php)
  - [ ] Mail Queue (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.mailq.inc.php)
  - [ ] Forwarding Hosts (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.fwdhost.inc.php)
  - [ ] Presets (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.presets.inc.php) All presets are currently stored here: https://github.com/ZynerOrg/zynerone/tree/master/data/web/inc/presets
  - [ ] TLS Policy Maps (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.tls_policy_maps.inc.php)
  - [ ] Quarantine (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.quarantine.inc.php)
  - [ ] Policies (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.policy.inc.php)
  - [ ] Quota Notifications (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.quota_notification.inc.php)
  - [ ] Ratelimits (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.ratelimit.inc.php)
  - [ ] Transports (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.transports.inc.php)
  - [ ] SPF Validation (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/spf.inc.php)
  - [ ] Validate Sieve filters in backend (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/ajax/sieve_validation.php)
- [ ] Security Endpoints
  - [ ] Netfilter (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.netfilter.inc.php)
  - [ ] Admin Users (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.admin.inc.php)
  - [ ] ACL (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.acl.inc.php)
  - [ ] Domain Admin Users (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.domain_admin.inc.php)
  - [ ] OAuth2 (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.oauth2.inc.php)
- [ ] UI Endpoints
  - [ ] Customization of UI (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.customize.inc.php)
  - [ ] DNS records (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/ajax/dns_diagnostics.php)
- [ ] Notification endpoints
  - [ ] Pushover (https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.pushover.inc.php) Either rewrite or abondon the code

Other:

- [ ] Helper functions (can be found here: https://github.com/ZynerOrg/zynerone/blob/master/data/web/inc/functions.inc.php)
- [ ] Replace API documentation with the new Rust API (https://github.com/ZynerOrg/zynerone/tree/master/data/web/api)
